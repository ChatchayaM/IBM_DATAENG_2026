## MySQL Setup
Getting Started with MySQL Command Line
In this lab, you will use the MySQL command line interface (CLI) to create a database, restore the structure and contents of tables, explore and query tables, and finally, learn how to dump/backup tables from the database.

### 1. Install Required Extensions

Install the following VS Code extension to work with MySQL:

* **MySQL**

---

### 2. Connect to MySQL via Terminal

Run the following command in your terminal:

```bash
mysql -u root
```

**⚠️ Common Error**
If you encounter:

```text
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)
```

Start the MySQL service:

```bash
brew services start mysql
```

Then verify the server status:

```bash
mysql.server status
```

---

### 3. Configure MySQL Extension in VS Code

1. Open the **MySQL** VS Code extension
2. Set up the database configuration
3. Test the connection
4. Hover over the connected database and click the **terminal icon** to open an interactive session

---

## 📦 Restore Table Structure and Data

### 1. Download the SQL Dump

Navigate to your desired directory, then run:

```bash
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0110EN-SkillsNetwork/datasets/sakila/sakila_mysql_dump.sql
```

---

### 2. Verify Available Databases

Inside the MySQL shell, run:

```sql
SHOW DATABASES;
```

---

### 3. Export the `staff` Table

Dump the `staff` table from the `sakila` database:

```bash
mysqldump -u root sakila staff > sakila_staff_mysql_dump.sql
```

---

### 4. Inspect the Dump File

View the contents of the exported SQL file:

```bash
cat sakila_staff_mysql_dump.sql
```
![Image](Handson_1_result.png)





