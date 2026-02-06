# cd to folder and set up new venv >> python3 -m venv .venv 
# then activate it with >> source .venv/bin/activate
# install library >> pip install pandas numpy bs4 requests
# download csv file >> curl -o exchange_rate.csv https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0221EN-Coursera/labs/v2/exchange_rate.csv

import requests                     # accessing the information from the URL
import pandas as pd                 # extracted data, storing it in required formats, and communicating with the databases
import numpy as np                  # mathematical rounding operations
import sqlite3                      # creating and managing the database
from bs4 import BeautifulSoup       # containing the BeautifulSoup function used for webscraping
from datetime import datetime       # extracting the timestamp for logging purposes


# Task1: Logging Function
logfile = 'code_log.txt'

def log_process(message):
    timeformat = '%Y-%m-%d-%H:%M:%S'
    current = datetime.now()
    timestamp = current.strftime(timeformat)
    with open(logfile, 'a') as f:
        f.write(timestamp + ' : ' + message + '\n')

# Task 2: Extraction of data
url = 'https://web.archive.org/web/20230908091635/https://en.wikipedia.org/wiki/List_of_largest_banks'
table_attribs = ['Name', 'MC_USD_Billion']

def extract(url, table_attribs):
    df = pd.DataFrame(columns=table_attribs)
    page = requests.get(url).text
    data = BeautifulSoup(page, 'html.parser')

    table = data.find_all('tbody')[0]
    rows = table.find_all('tr')

    for row in rows:
        col = row.find_all('td')
        if len(col) != 0:
            ancher_data = col[1].find_all('a')[1]
            if ancher_data is not None:
                data_dict = {
                    'Name': ancher_data.contents[0],
                    'MC_USD_Billion': col[2].contents[0]
                }
                df1 = pd.DataFrame(data_dict, index = [0])
                df = pd.concat([df, df1], ignore_index = True)

    USD_list = list(df['MC_USD_Billion'])
    USD_list = [float(''.join(x.split('\n'))) for x in USD_list]
    df['MC_USD_Billion'] = USD_list
    return df

df = extract(url, table_attribs)
print('\nExtraction function testing:\n', df) 


# Task 3: Transformation of data
exchange_rate_path = 'exchange_rate.csv'

def transform(df, exchange_rate_path):
    csvfile = pd.read_csv(exchange_rate_path)
    dict = csvfile.set_index('Currency').to_dict()['Rate']

    df['MC_GBP_Billion'] = [np.round(x * dict['GBP'],2) for x in df['MC_USD_Billion']]
    df['MC_INR_Billion'] = [np.round(x * dict['INR'],2) for x in df['MC_USD_Billion']]
    df['MC_EUR_Billion'] = [np.round(x * dict['EUR'],2) for x in df['MC_USD_Billion']]
    return df
df = transform(df, exchange_rate_path)
print('\nTransformation function testing:\n',df) 

# Task 4: Loading to csv
def load_to_csv(df, output_path):
    df.to_csv(output_path)

# Task 5: Loading to db
def load_to_db(df, sql_connection, table_name):
    df.to_sql(table_name, sql_connection, if_exists = 'replace', index = False)

# Task 6: Function to run queries on db
def run_query(query_statements, sql_connection):
    for query in query_statements:
        print(query)
        print(pd.read_sql(query, sql_connection), '\n')


db_name = 'Banks.db'
table_name = 'Largest_banks'
conn = sqlite3.connect(db_name)
query_statements = [
        'SELECT * FROM Largest_banks',
        'SELECT AVG(MC_GBP_Billion) FROM Largest_banks',
        'SELECT Name from Largest_banks LIMIT 5'
    ]

output_csv_path = 'Largest_banks_data.csv'
log_process('Preliminaries complete. Initiating ETL process.')

df = extract(url, table_attribs)
log_process('Data extraction complete. Initiating Transformation process.')     

df = transform(df, exchange_rate_path)
log_process('Data transformation complete. Initiating loading process.')

load_to_csv(df, output_csv_path)
log_process('Data saved to CSV file.')

log_process('SQL Connection initiated.')

load_to_db(df, conn, table_name)
log_process('Data loaded to Database as table. Running the query.')

run_query(query_statements, conn)
conn.close()
log_process('Process Complete.')