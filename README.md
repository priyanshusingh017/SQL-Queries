# SQL Queries 
A comprehensive collection of SQL queries from basic to advanced levels, designed to help developers, data analysts, and database enthusiasts master SQL.

## About
This repository serves as:
- A practice resource for SQL learners
- A reference guide for common SQL operations
- A collection of interview-ready SQL queries
- A demonstration of various SQL concepts and techniques

## Getting Started

### Prerequisites
- SQL database system (MySQL, SQL Server, SQLite)
- Database management tool (MySQL Workbench )

### Installation
1. Clone the repository:
```bash
git clone https://github.com/priyanshusingh017/SQL-Queries.git
```
2. Navigate to the project directory:
   ```bash
   cd SQL-Queries
   ```
3. Set up sample database (optional):
   ```
   SOURCE 05-Database-Setup/sample-schema.sql;
   SOURCE 05-Database-Setup/sample-data.sql;
   ```
   
## 🛠️ Resources

### **Editors/IDEs**
- [VS Code](https://code.visualstudio.com/) (with [SQL extensions](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools))
- [MySQL Workbench](https://www.mysql.com/products/workbench/) (Official MySQL GUI)

### **Online Compilers**
- [OneCompiler](https://onecompiler.com/mysql) - Quick MySQL online editor
- [W3Schools TrySQL](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all) - Interactive SQL playground
- [DB Fiddle](https://www.db-fiddle.com/) - Supports multiple SQL variants
- [SQLize](https://sqlize.online/) - Collaborative SQL editor

### **Practice Platforms**
- [LeetCode SQL 50](https://leetcode.com/studyplan/top-sql-50/) - Curated list of 50 SQL problems
- [HackerRank SQL](https://www.hackerrank.com/domains/sql) - SQL challenges with difficulty levels


## Sample Queries

### Basic Example
```sql
-- Find employees with salary > 50000
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;
```
### Intermediate Example
```sql
-- Average salary by department
SELECT d.department_name, 
       COUNT(e.employee_id) AS employee_count,
       AVG(e.salary) AS avg_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 45000;
```
### Advanced Example
```sql
-- Running total with window functions
SELECT 
    sales_date,
    sales_amount,
    SUM(sales_amount) OVER (ORDER BY sales_date) AS running_total
FROM sales
ORDER BY sales_date;
```

## Quick Reference

### SQL Command Categories
```sql
-- Data Query Language (DQL)
SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY

-- Data Manipulation Language (DML)
INSERT, UPDATE, DELETE, MERGE

-- Data Definition Language (DDL)
CREATE, ALTER, DROP, TRUNCATE, RENAME

-- Data Control Language (DCL)
GRANT, REVOKE

-- Transaction Control Language (TCL)
COMMIT, ROLLBACK, SAVEPOINT
```

### Common Patterns

```sql
-- Basic Query Structure
SELECT column1, column2
FROM table_name
WHERE condition
GROUP BY column1
HAVING group_condition
ORDER BY column1;

-- JOIN Pattern
SELECT t1.column, t2.column
FROM table1 t1
[JOIN TYPE] JOIN table2 t2 
    ON t1.id = t2.foreign_id
[WHERE additional_conditions];

```

## 🏆 Practice Resources

### **Recommended Study Path**

| Level       | Resources                                                                 | Focus Area                          |
|-------------|---------------------------------------------------------------------------|-------------------------------------|
| **Beginner**  | [W3Schools SQL](https://www.w3schools.com/sql/) → [LeetCode Easy](https://leetcode.com/problemset/database/?difficulty=EASY) | Basic syntax, simple queries        |
| **Intermediate** | [SQLZoo](https://sqlzoo.net/) → [LeetCode Medium](https://leetcode.com/problemset/database/?difficulty=MEDIUM) | Joins, subqueries, aggregation      |
| **Advanced**   | [StrataScratch](https://www.stratascratch.com/) → [LeetCode Hard](https://leetcode.com/problemset/database/?difficulty=HARD) | Optimization, window functions, CTEs |


## 📜 License

This project is licensed under the [MIT License](LICENSE.md)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

1. **Fork** the repository
   
2. **Create** your feature branch:
   
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. Commit your changes:
   ```
   git commit -m 'Add some AmazingFeature'
   ```
5. Push to the branch:
   ```
   git push origin feature/AmazingFeature
   ```
6. Open a Pull Request
