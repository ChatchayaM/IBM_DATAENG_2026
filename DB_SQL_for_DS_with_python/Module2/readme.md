# Hands-on Lab : CREATE, ALTER, TRUNCATE, DROP
1) Access to **phpMyadmin** GUI tools
2) Create new database named Mysql_Learners and leave the default utf8 encoding

### Create statement
3) Create table from SQL
    ![Image](../etc/module2-php1-create.png)
    ![Image](../etc/module2-php1-create_result.png)

### Insert statement
4) Insert table from SQL
    ![Image](../etc/module2-php1-insert.png)
    ![Image](../etc/module2-php1-insert_result.png)

### Alter statement

5) **Add** a new column named QUANTITY to the PETSALE table 
    ![Image](../etc/module2-php1-add.png)
    ![Image](../etc/module2-php1-add_result.png)
6) **Update** data in QUANTITY column
    ![Image](../etc/module2-php1-update.png)
    ![Image](../etc/module2-php1-update_result.png)
7) **Delete** the PROFIT column from the PETSALE table and show the altered table. 
    ![Image](../etc/module2-php1-delete.png)
    ![Image](../etc/module2-php1-delete_result.png)
8) **Modify** data type to VARCHAR(20) type of the column PET of the table PETSALE
    ![Image](../etc/module2-php1-modify.png)
    ![Image](../etc/module2-php1-modify_result.png)
9) **Rename** the column PET to ANIMAL of the PETSALE table and show the altered table.
    ![Image](../etc/module2-php1-rename.png)
    ![Image](../etc/module2-php1-rename_result.png)

### TRUNCATE statement 
This statement is like use it to remove all rows from an existing table without deleting it.

10) Remove all rows from the PET table and show the empty table 
    ![Image](../etc/module2-php1-truncate.png)
    ![Image](../etc/module2-php1-truncate_result.png)

### [Task] DROP statement 
11) Delete an existing table
    ![Image](../etc/module2-php1-drop.png)
    ![Image](../etc/module2-php1-drop_result.png)


# Hands-on Lab: Create and Load Tables using SQL Scripts
1) Create database `CVD`
    ![Image](../etc/module2-php2-dataref.png)
2) Create tables using SQL script
    ![Image](../etc/module2-php2-import_table.png)
    ![Image](../etc/module2-php2-import_table_result.png)
3) Load data into tables
    ![Image](../etc/module2-php2-import_data.png)
4) Browse to view table's data
    ![Image](../etc/module2-php2-import_data_result.png)
