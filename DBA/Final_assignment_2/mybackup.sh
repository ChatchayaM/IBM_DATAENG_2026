#! /bin/sh

backup_dir=/tmp/mysqldumps/$(date +%Y%m%d);

back_file=$backup_dir/backup.sql;

mkdir -p $backup_dir/;

if mysqldump --all-databases --user=root --password=jinnie626 > $back_file
then
    echo 'SUCCESS: MySQL dump created at:';
    echo $back_file;
else
    echo 'mysqldump return non-zero code No backup was created!!';
fi
