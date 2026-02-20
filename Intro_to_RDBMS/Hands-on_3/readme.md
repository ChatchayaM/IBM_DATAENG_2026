## Keys and Constraints in MySQL using phpMyAdmin

1. download this file>> **eBooks_mysql_dump.sql**
2. open phpmyadmin
3. Go to the Import tab and load the file. Next, uncheck Enable foreign key checks and select SQL as the Format. Then click Import.
4. Select the database eBooks 
    - Primary Keys: Creating a primary key on a table automatically creates an index on the key. You will create a primary key for the author table to identify every row in the table uniquely. You will set the author_id column of the author table as a primary key.
    ![Image](../Hands-on_3/etc/Handson3_creatingpk.png)
    - Auto-increment: You will set the auto-increment feature for the primary key of the author table.
    ![Image](../Hands-on_3/etc/Handson_3_creatingal.png)
    - Null constraints: You will restrict the first_name column of the authors table from having a NULL value.
    ![Image](../Hands-on_3/etc/Handson_3_null.png)
    - Foreign keys: You will create a foreign key for the book_authors table by setting its author_id column as a foreign key to establish a relationship between the book_authors and authors tables.
    ![Image](../Hands-on_3/etc/Handson_3_fk1.png)
    ![Image](../Hands-on_3/etc/Handson_3_fk2.png)
    **Additionally** 
        -   **CASCADE:** when rows are deleted or updated in the parent table, the corresponding rows in the child table will also be deleted or updated.
        -   **RESTRICT:** when rows cannot be deleted or updated in the parent table if there are corresponding rows in the child table.
5. After creating/adding all the above necessary primary keys, foreign keys, and constraints, the schema of the complete eBooks database will look like the following ERD diagram
    ![Image](../Hands-on_3/etc/Handson_3_erd.png)


