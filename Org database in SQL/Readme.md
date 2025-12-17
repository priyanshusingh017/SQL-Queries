# Org Database – Practice Set

Self-contained SQL practice on a small organization schema. Includes schema creation, sample data, and 49 interview-style queries with solutions.

## What’s Inside
- `Org database.sql` — creates tables, inserts sample data, and contains all practice queries.
- Tables: `Worker`, `Bonus`, `Title` with simple relationships for realistic joins and aggregations.

## Schema Summary
- `Worker`:
  - `WORKER_ID` (PK), `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`
- `Bonus`:
  - `WORKER_REF_ID` (FK → `Worker.WORKER_ID`), `BONUS_AMOUNT`, `BONUS_DATE`
- `Title`:
  - `WORKER_REF_ID` (FK → `Worker.WORKER_ID`), `WORKER_TITLE`, `AFFECTED_FROM`

## Setup & Run

MySQL Workbench / GUI
1. Open a SQL editor and (optionally) create/select a database:
   ```sql
   CREATE DATABASE org1;
   USE org1;
   ```
2. Open `Org database.sql` and execute the file.

MySQL CLI
```bash
# Optional: create DB and run script
mysql -u <user> -p -e "CREATE DATABASE IF NOT EXISTS org1;"
mysql -u <user> -p org1 < "Org database.sql"
```

Notes
- Scripts use MySQL-style syntax (`INSTR`, `SUBSTRING`, `RTRIM/LTRIM`, `YEAR/MONTH`, `NOW()`).
- Adjust for other dialects as needed (`TOP` vs `LIMIT`, `COALESCE` vs `IFNULL`, date functions).

## Exercises Included (high-level)
- Text & string ops: aliases, upper, distinct, substrings, `INSTR`, trim, length, replace, `CONCAT` (Q1–10)
- Ordering & filtering: `ORDER BY`, `LIKE`, `BETWEEN` (Q11–18)
- Date filtering: joined-in-Feb-2014 (Q19)
- Aggregation & grouping: counts, group counts by department, duplicates by salary, totals (Q20, 22, 24, 39, 40, 48)
- Joins: workers who are managers, intersections, join checks (Q23, 28, 37)
- Set differences / anti-joins: records in one table not in another (Q29)
- Limits & rankings: top-N, nth-highest (with and without `LIMIT`) (Q31–35, 41–47)
- Table ops & misc: clone tables, odd/even rows, current time, duplicates with `UNION ALL`, first-half rows (Q25–27, 30, 36, 38)
- Max-per-group: highest salary per department (Q44), overall highest earners (Q49)

## Quick Peek
```sql
-- Highest salary per department
SELECT w.DEPARTMENT, w.FIRST_NAME, w.SALARY
FROM Worker w
WHERE w.SALARY = (
  SELECT MAX(SALARY) FROM Worker WHERE DEPARTMENT = w.DEPARTMENT
);
```

## File
- Main script: [Org database.sql](Org%20database.sql)

