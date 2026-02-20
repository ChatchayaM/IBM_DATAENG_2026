## Create Tables and Load Data in MySQL using phpMyAdmin
 phpMyAdmin is a free, open-source web-based application written in PHP that provides a graphical user interface (GUI) for managing MySQL and MariaDB database servers. 

### Key Aspects:
**Purpose:**
It allows users to manage databases, tables, columns, relations, indexes, and users without needing to write command-line SQL queries.

**Functionality:**
It supports essential tasks like importing/exporting data (SQL, CSV, etc.), running custom SQL queries, and repairing/optimizing tables.

**Accessibility**
As a web application, it is commonly bundled with web hosting control panels (like cPanel) and local development tools (like XAMPP/WAMP). 

1) Setup a phpMyAdmin 
    instruction>> https://www.youtube.com/watch?v=EuIl_Crv8vg
2) XAMP> Go to application> phpMyAdmin
3) Create table interface for the empty database **Books**, enter myauthors as the table name and **4** for the Number of columns.
4) Enter the table definition for the myauthors table as shown and save

    | Name | Type | Length/Values |
    |--------|-------------|--------|
    | author_id | INT |  |
    | first_name | VARCHAR | 100 |
    | middle_name | VARCHAR | 50 |
    | last_name | VARCHAR | 100 |
5) Go to 'Insert' to load data into tables manually using the phpMyAdmin GUI
    ![Image](../Hands-on_2/etc/Handson_2_insertion.png)
    ![Image](../Hands-on_2/etc/Handson_2_insertion_result.png)
6) Go to 'Import' to load data into tables using a text/script file and choose this file **mysql_table-myauthors_insert-data.sql** 
    Then,
    ![Image](../Hands-on_2/etc/Handson_2_import_result.png)


