# Databases and SQL for Data Science with Python

## Module 1: Getting started with SQL 

**SQL is the language, data is the asset, the database stores it, and an RDBMS manages it.**

Common RDBMS examples include **MySQL**, **Oracle Database**, and **IBM Db2**.

### Local database setup 
1) prepare environment to execute sql which there are 2 options:

    - Terminal -> 
    - Vscode -> connect through **MySQL** vscode extension  
2) download dataset as csv from 
3) convert csv --> sql (PS. can use this python converter file)
4) mysql: 

    - `mysql -u [your_user_access] -p`
    - `create database [your_db_name];`
    - `show databases;`
    - `use [your_db_name];`
5) terminal: `mysql -u [your_user_access] -p [your_db_name] < [.sql_file_path]`

### The **5 basic SQL commands** are:
* **CREATE** – create tables
* **INSERT** – add data
* **SELECT** – retrieve data
* **UPDATE** – modify data
* **DELETE** – remove data

### The **intermediate commands** are:
* **ALTER**    - add or remove to modify data
* **TRUNCATE** - delete all of the rows in a table

## Module 2: Introduction to Relational Databases and Tables 
* A **database** stores data and supports adding, updating, and querying it.
* **SQL** is the language used to retrieve data from relational databases.
* The **relational model** is widely used because it supports data independence.
* A **primary key** uniquely identifies each row and enables relationships between tables.
* **SQL statements** are categorized into **DDL** (define structure) and **DML** (manipulate data).

## Module 3: Intermediate SQL 
* **Built-in SQL functions** process data directly in the database, improving performance and reducing data transfer.
* **Aggregate functions** (`SUM`, `MIN`, `MAX`, `AVG`) return a single value from multiple rows.
* **Scalar functions** work on individual values (e.g., `ROUND`).
* **String functions** (`LENGTH`, `UPPER`, `LOWER`) handle text data.
* Functions can be used in **WHERE clauses** and **nested** together.

## Module 4: Accessing databases with Python 
* Python connects to databases using **SQL APIs** and the **Python DB API**.
* **Jupyter Notebooks** enable interactive querying and data analysis.
* Each **DBMS**provides its own proprietary API for database access.
* **Python DB-API** is a standard interface for accessing relational databases using Python.
* It allows **portable code** that works across different databases.
* **Connection objects** manage database connections and transactions (`commit`, `rollback`, `close`).
* **Cursor objects** used by python to execute queries and fetch results.
* Typical flow: **connect → create cursor → execute query → fetch results → close connection**.
* **SQL Magic** VS **Python DB-API**
    | Feature                           | SQL Magic                       | Python DB-API            |
    | --------------------------------- | ------------------------------- | ------------------------ |
    | Works in `.py` files              | ❌ No                            | ✅ Yes                    |
    | Works in Jupyter notebooks        | ✅ Yes                           | ✅ Yes                    |
    | Requires cursor / connection code | ❌ No                            | ✅ Yes                    |
    | Best for                          | Learning, exploration, analysis | Applications, production |
## Module 5: Course Assignment 


## Module 6: Advanced SQL for Data Engineers
