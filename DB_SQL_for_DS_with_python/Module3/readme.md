# Hands-on Lab: String Patterns, Sorting and Grouping in MySQL
    
![Image](../etc/module3-php1-data_ref.png)
1) Create database named **HR**
2) Create table from this sql
    ```
    CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));

    CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));

    CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(30),
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

    CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

    CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));                      
    ```
3) Use each of these files to the iterface as data for respective tables in the ‘HR’ database.

    - Departments.csv
    - Jobs.csv
    - JobsHistory.csv
    - Locations.csv
    - Employees.csv
4) Use **string patterns** to filter the response of a query 
    - Name of who live in Elgin, IL
        ![Image](../etc/module3-php1-str_patterns1.png)
    - Name of who were born during the 70s
        ![Image](../etc/module3-php1-str_patterns2.png)
    - Name of ecords in department 5 where salary is between 60000 and 70000
        ![Image](../etc/module3-php1-str_patterns3.png)
5) Use **sort** the retrieved entries on the basis of one or more parameters.
    - Sorts the records in ascending order
        ![Image](../etc/module3-php1-sorting1.png)
    - Output of the same query in descending order of department ID, and within each deaprtment
        ![Image](../etc/module3-php1-sorting2.png)
6) Use **grouping** usually works with **aggregate function**
    - Grouping would be if For each department ID, we wish to retrieve the number of employees in the department
        ![Image](../etc/module3-php1-grouping1.png)
    - Retrieve, for each department, the number of employees and the average salary by using COUNT(*) and AVG() with GROUP BY.
        ![Image](../etc/module3-php1-grouping2.png)
    - Use column aliases to label the computed results as NUM_EMPLOYEES and AVG_SALARY.
        ![Image](../etc/module3-php1-grouping3.png)
    - You can combine GROUP BY and ORDER BY to sort grouped results based on a specific column. In this case, the ORDER BY clause must come after the GROUP BY clause. For example, to sort grouped results by average salary.
        ![Image](../etc/module3-php1-grouping4.png)
    - To filter grouped results, use the HAVING clause.
For example, to show only departments with fewer than 4 employees, apply HAVING after GROUP BY and use the COUNT() function instead of the column alias.
        ![Image](../etc/module3-php1-grouping5.png)


# Hands-on Lab: Built-in functions
1) Import **PETRESCUE-CREATE.sql** to **Mysql_Learners** database
    `SELECT * FROM PETRESCUE;`
    ![Image](../etc/module3-php2-data_ref.png)
2) **Aggregation Function**

    |Function Type| Query | Result |
    |-------------|-------|--------|
    | **SUM** | `SELECT SUM(COST) FROM PETRESCUE;`| ![Image](../etc/module3-php2-sum.png)
    | **MAX** | `SELECT MAX(QUANTITY) FROM PETRESCUE;`| ![Image](../etc/module3-php2-max.png)
    | **MIN** | `SELECT MIN(QUANTITY) FROM PETRESCUE;`| ![Image](../etc/module3-php2-min.png)
    | **AVG** | `SELECT AVG(COST) FROM PETRESCUE;`| ![Image](../etc/module3-php2-avg.png)

3) **Scalar Functions**
    |Function Type| Query | Result |
    |-------------|-------|--------|
    |  **ROUND**  | `SELECT ROUND(COST) FROM PETRESCUE;`| ![Image](../etc/module3-php2-round.png)
    |             | `SELECT ROUND(COST, 0) FROM PETRESCUE;`| ![Image](../etc/module3-php2-round1.png)
    |             | `SELECT ROUND(COST, 2) FROM PETRESCUE;`| ![Image](../etc/module3-php2-round2.png)

4) **String Functions**
    |Function Type| Query | Result |
    |-------------|-------|--------|
    |  **LENGTH** | `SELECT LENGTH(ANIMAL) FROM PETRESCUE;`| ![Image]( ../etc/module3-php2-length.png)|
    |  **UCASE**  | `SELECT UCASE(ANIMAL) FROM PETRESCUE;`| ![Image](../etc/module3-php2-ucase.png)|
    |  **LCASE**  | `SELECT LCASE(ANIMAL) FROM PETRESCUE;`| ![Image](../etc/module3-php2-lcase.png)|

5) **Date Functions**
    |Function Type| Query | Result |
    |-------------|-------|--------|
    |   **DAY**   | `SELECT DAY(RESCUEDATE) FROM PETRESCUE;`| ![Image](../etc/module3-php2-day.png)|
    |  **MONTH**  | `SELECT MONTH(RESCUEDATE) FROM PETRESCUE;`| ![Image](../etc/module3-php2-month.png)|
    |   **YEAR**  | `SELECT YEAR(RESCUEDATE) FROM PETRESCUE;`| ![Image](../etc/module3-php2-year.png)|
    |  **DATE_ADD** | `SELECT ANIMAL, RESCUEDATE, DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;`| ![Image](../etc/module3-php2-date_add.png)
    |               | `SELECT ANIMAL, RESCUEDATE, DATE_ADD(RESCUEDATE, INTERVAL 2 MONTH) FROM PETRESCUE`| ![Image](../etc/module3-php2-month_add.png)|
    |  **DATE_SUB** | `SELECT ANIMAL, RESCUEDATE, DATE_SUB(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE`| ![Image](../etc/module3-php2-date_sub.png)
    | **DATE_DIFF** |`SELECT ANIMAL, RESCUEDATE, DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE;`| ![Image](../etc/module3-php2-date_diff.png)
    || `SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE, RESCUEDATE)) FROM PETRESCUE`| ![Image](../etc/module3-php2-date_diff1.png)|


# Hands-on Lab: Sub-queries and Nested Selects
1) The error occurs because `AVG` cannot be used directly in `WHERE`. Therefore, use a **subquery** to calculate the average first, then compare values.
    | Directly | Sub-query |
    |----------|-----------|
    |`SELECT * FROM EMPLOYEES WHERE salary < AVG(salary);`|`SELECT * FROM EMPLOYEES WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);`|
    |![Image](../etc/module3-php1-sub_avg_err.png)|![Image](../etc/module3-php1-sub_avg.png)|
2) Retrieve `EMP_ID`, `SALARY`, and the overall maximum salary as `MAX_SALARY` in each row.
    ![Image](../etc/module3-php1-max_salary.png)
3) To find the **oldest employee**, select the first and last names of the employee with the earliest date of birth.
    ![Image](../etc/module3-php1-oldest_employee.png)
4) To find the **average salary of the top 5 earners**, first select the top five salaries, then calculate their average.
    ![Image](../etc/module3-php1-top_earners.png)


# Hands-on Lab: Working with Multiple Tables
1)  Which employees earning over $70,000
    ![Image](../etc/module3-php1-emp_7000.png)
2) Accessing multiple tables with Implicit Joins
    -  EMPLOYEES records corresponding to jobs in the JOBS table
    ![Image](../etc/module3-php2-multi_table1.png)
    ![Image](../etc/module3-php2-multi_table2.png)