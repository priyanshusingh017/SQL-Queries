## SQL Queries Collection
Curated SQL examples from beginner to advanced levels. This repository helps developers, analysts, and students practice core SQL concepts, study common patterns, and reference idiomatic solutions to real problems (including LeetCode SQL-50–style tasks).

## What’s Inside
- Practice-ready `.sql` scripts organized by topic and difficulty
- Coverage of selects, joins, aggregations, subqueries, and window functions
- Clear patterns and snippets you can adapt in interviews and projects
- Resources for editors, online playgrounds, and structured learning paths

## Repository Structure
- Org database in SQL/ — Organization-themed SQL scripts
- Practice/ — Misc practice exercises (e.g., classroom scenarios)
- SQL-50/ — Topic-wise solutions inspired by “SQL 50” practice sets
   - select/
   - basics join/
   - Basic Aggregate Functions/
   - Sorting and Grouping/
   - Advanced Select and Joins/
   - Subqueries/

Note: Scripts target common SQL dialects. Most examples follow MySQL-style syntax; minor adjustments may be required for PostgreSQL, SQL Server, or SQLite (e.g., `LIMIT` vs `TOP`, date formatting functions, string functions).

## Getting Started

### Prerequisites
- A SQL database system (e.g., MySQL, PostgreSQL, SQL Server, SQLite)
- An editor or client:
   - VS Code with SQL tools (e.g., SQLTools)
   - MySQL Workbench or a similar database client
   - Any online SQL playground (see Resources)

### Clone the Repository
```bash
git clone https://github.com/priyanshusingh017/SQL-Queries.git
cd SQL-Queries
```

## Running Queries
Choose one of the workflows below:

- MySQL Workbench (or GUI): Open any `.sql` file, connect to your database, and run the script.

- VS Code (SQLTools):
   1. Install the “SQLTools” extension and configure a connection.
   2. Open a `.sql` file and execute the current statement or file.

- CLI (MySQL example):
   ```bash
   # Run an entire script against a database
   mysql -u <user> -p <database_name> < path/to/script.sql
   ```

Tips:
- Some practice scripts assume certain tables; many files include the necessary DDL at the top. If not, adapt to your schema or create small temp tables for testing.
- For non-MySQL databases, adjust minor syntax differences as needed.

## Sample Snippets

Basic
```sql
-- Find employees with salary > 50000
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;
```

Intermediate
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

Advanced
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

SQL Command Categories
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

Common Patterns
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

## Learning Path
- Beginner: W3Schools SQL → LeetCode Easy
- Intermediate: SQLZoo → LeetCode Medium
- Advanced: StrataScratch → LeetCode Hard, focus on window functions and CTEs

Helpful Platforms
- LeetCode SQL 50 — curated practice set
- HackerRank SQL — graduated difficulty challenges

## Tools & Resources

Editors / IDEs
- VS Code (consider SQLTools)
- MySQL Workbench (official MySQL GUI)

Online Playgrounds
- OneCompiler (MySQL)
- W3Schools TrySQL
- DB Fiddle (multiple dialects)
- SQLize (collaborative editor)

## Contributing
Contributions are welcome!
1) Fork the repo
2) Create a feature branch
```bash
git checkout -b feature/your-feature
```
3) Commit your changes
```bash
git commit -m "Describe your change"
```
4) Push and open a Pull Request
```bash
git push origin feature/your-feature
```

## License
This project is available under the MIT License.
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
