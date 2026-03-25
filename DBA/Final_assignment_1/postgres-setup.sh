#download the data file
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/vehicle-data.csv
 
#download the sql file
 
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/setup.sql
 
#run the sql file
export PGPASSWORD="";
 
psql -U jn -h 127.0.0.1 -p 5432 -d postgres -f setup.sql

#import the csv file
cat vehicle-data.csv | psql -U jn -h 127.0.0.1 -p 5432 -d postgres -c "COPY toll.tolldata FROM STDIN WITH (FORMAT csv);" 
