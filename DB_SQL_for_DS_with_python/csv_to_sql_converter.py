import sqlite3
import csv

csv_file = '/.csv_file_path/' # csv file tthat we would like to convert
sql_file = '/.sql_file_path/' # output after convert to SQL file
table_name = 'Film_Locations' # table name

with open(csv_file, 'r', encoding='utf-8') as f:
    reader = csv.reader(f)
    headers = next(reader)
    
    # generate CREATE TABLE statement
    columns = ', '.join([f'"{h}" TEXT' for h in headers])
    create_stmt = f'CREATE TABLE {table_name} ({columns});\n'
    
    # generate INSERT statements
    insert_stmts = ''
    for row in reader:
        values = ', '.join([f"'{v.replace('\'','\'\'')}'" for v in row])  # Escape single quotes
        insert_stmts += f'INSERT INTO {table_name} VALUES ({values});\n'

with open(sql_file, 'w', encoding='utf-8') as f:
    f.write(create_stmt)
    f.write(insert_stmts)

print(f"{csv_file} has been converted to {sql_file}")