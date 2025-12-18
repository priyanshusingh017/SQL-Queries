# SQL-50 Practice Set

Curated SQL exercises organized by topic and difficulty, inspired by popular SQL practice tracks (e.g., LeetCode SQL 50). Use these scripts to build fluency with selects, joins, aggregations, grouping, subqueries, and window functions.

> Note: This collection is for learning and practice. It is not affiliated with or endorsed by any third-party platform.

## Contents
- [Overview](#overview)
- [Folder Structure](#folder-structure)
- [How to Run](#how-to-run)
- [Problem Sets by Topic](#problem-sets-by-topic)
- [Conventions and Dialect Notes](#conventions-and-dialect-notes)

## Overview
- Focus: Core relational SQL skills used in interviews and daily analytics work.
- Style: Self-contained `.sql` files you can run individually.
- Dialects: Examples primarily use MySQL-style syntax; minor adjustments may be needed for PostgreSQL, SQL Server, or SQLite.

## Folder Structure
- `select/` — Foundational selection and filtering queries
- `basics join/` — Inner/left/right joins and basic multi-table queries
- `Basic Aggregate Functions/` — `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`
- `Sorting and Grouping/` — Ordering, grouping patterns, and rollups
- `Advanced Select and Joins/` — Window functions and complex join scenarios
- `Subqueries/` — Scalar, correlated, and `IN/EXISTS` subqueries

## How to Run

Pick one of the methods below. Replace placeholders (user, db, paths) as needed.

- MySQL Workbench (or any SQL GUI):
  1) Connect to your database
  2) Open a `.sql` file
  3) Run the script

- VS Code (SQLTools recommended):
  1) Install the “SQLTools” extension and configure a connection
  2) Open a `.sql` file
  3) Execute the current statement/file

- CLI (MySQL example):
```bash
# Run an entire script against a database
mysql -u <user> -p <database_name> < path/to/script.sql
```

Tips:
- Some scripts assume the presence of simple tables; create quick mock tables if needed.
- For non-MySQL databases, adjust small syntax differences (see notes below).

## Problem Sets by Topic

### select/
1. [select/leetcode1148.sql](select/leetcode1148.sql)
2. [select/leetcode1683.sql](select/leetcode1683.sql)
3. [select/leetcode1757.sql](select/leetcode1757.sql)
4. [select/leetcode584.sql](select/leetcode584.sql)
5. [select/leetcode595.sql](select/leetcode595.sql)

### basics join/
1. [basics join/leetcode1068.sql](basics%20join/leetcode1068.sql)
2. [basics join/leetcode1280.sql](basics%20join/leetcode1280.sql)
3. [basics join/leetcode1378.sql](basics%20join/leetcode1378.sql)
4. [basics join/leetcode1581.sql](basics%20join/leetcode1581.sql)
5. [basics join/leetcode1661.sql](basics%20join/leetcode1661.sql)
6. [basics join/leetcode1934.sql](basics%20join/leetcode1934.sql)
7. [basics join/leetcode197.sql](basics%20join/leetcode197.sql)
8. [basics join/leetcode570.sql](basics%20join/leetcode570.sql)
9. [basics join/leetcode577.sql](basics%20join/leetcode577.sql)

### Basic Aggregate Functions/
1. [Basic Aggregate Functions/leetcode1075.sql](Basic%20Aggregate%20Functions/leetcode1075.sql)
2. [Basic Aggregate Functions/leetcode1251.sql](Basic%20Aggregate%20Functions/leetcode1251.sql)
3. [Basic Aggregate Functions/leetcode1174.sql](Basic%20Aggregate%20Functions/leetcode1174.sql)
4. [Basic Aggregate Functions/leetcode1193.sql](Basic%20Aggregate%20Functions/leetcode1193.sql)
5. [Basic Aggregate Functions/leetcode1211.sql](Basic%20Aggregate%20Functions/leetcode1211.sql)
6. [Basic Aggregate Functions/leetcode1633.sql](Basic%20Aggregate%20Functions/leetcode1633.sql)
7. [Basic Aggregate Functions/leetcode550.sql](Basic%20Aggregate%20Functions/leetcode550.sql)
8. [Basic Aggregate Functions/leetcode620.sql](Basic%20Aggregate%20Functions/leetcode620.sql)

### Sorting and Grouping/
1. [Sorting and Grouping/leetcode1045.sql](Sorting%20and%20Grouping/leetcode1045.sql)
2. [Sorting and Grouping/leetcode1070.sql](Sorting%20and%20Grouping/leetcode1070.sql)
3. [Sorting and Grouping/leetcode1141.sql](Sorting%20and%20Grouping/leetcode1141.sql)
4. [Sorting and Grouping/leetcode1729.sql](Sorting%20and%20Grouping/leetcode1729.sql)
5. [Sorting and Grouping/leetcode2356.sql](Sorting%20and%20Grouping/leetcode2356.sql)
6. [Sorting and Grouping/leetcode596.sql](Sorting%20and%20Grouping/leetcode596.sql)
7. [Sorting and Grouping/leetcode619.sql](Sorting%20and%20Grouping/leetcode619.sql)

### Advanced Select and Joins/
1. [Advanced Select and Joins/leetcode 1164.sql](Advanced%20Select%20and%20Joins/leetcode%201164.sql)
2. [Advanced Select and Joins/leetcode 1204.sql](Advanced%20Select%20and%20Joins/leetcode%201204.sql)
3. [Advanced Select and Joins/leetcode 1731.sql](Advanced%20Select%20and%20Joins/leetcode%201731.sql)
4. [Advanced Select and Joins/leetcode 1789.sql](Advanced%20Select%20and%20Joins/leetcode%201789.sql)
5. [Advanced Select and Joins/leetcode 180.sql](Advanced%20Select%20and%20Joins/leetcode%20180.sql)
6. [Advanced Select and Joins/leetcode 1907.sql](Advanced%20Select%20and%20Joins/leetcode%201907.sql)
7. [Advanced Select and Joins/leetcode 610.sql](Advanced%20Select%20and%20Joins/leetcode%20610.sql)

### Subqueries/
1. [Subqueries/leetcode1978.sql](Subqueries/leetcode1978.sql)
2. [Subqueries/leetcode626.sql](Subqueries/leetcode626.sql)
3. [Subqueries/leetcode1321.sql](Subqueries/leetcode1321.sql)
4. [Subqueries/leetcode1341.sql](Subqueries/leetcode1341.sql)
5. [Subqueries/leetcode602.sql](Subqueries/leetcode602.sql)

## Conventions and Dialect Notes

- Naming: Files follow a simple pattern by topic and reference number (e.g., `leetcodeXXXX.sql`).
- Window functions: Some advanced scripts use `OVER (...)` clauses; ensure your database version supports them.
- Date/time: Functions differ across systems (`DATE_FORMAT` vs `TO_CHAR`, `DATEDIFF` semantics, etc.).
- Limiting rows: `LIMIT n` (MySQL, PostgreSQL) vs `TOP n` (SQL Server).
- Null handling: `IFNULL` (MySQL) vs `COALESCE` (ANSI/most systems).


