-- Step 1: Create Database
-- CREATE DATABASE ORG1;
-- USE ORG1;

-- Step 2: Create Worker Table
CREATE TABLE Worker (
    WORKER_ID INT NOT NULL PRIMARY KEY ,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

-- Step 3: Insert Data into Worker Table
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

-- Step 4: Create Bonus Table
CREATE TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

-- Step 5: Insert Data into Bonus Table
INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '2016-02-20'),
(002, 3000, '2016-06-11'),
(003, 4000, '2016-02-20'),
(001, 4500, '2016-02-20'),
(002, 3500, '2016-06-11');

-- Step 6: Create Title Table
CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

-- Step 7: Insert Data into Title Table
INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003, 'Lead', '2016-06-11 00:00:00');

select * from worker;
select * from Bonus;
select * from Title;

-- 1. Write an SQL query to fetch "FIRST_NAME" from Worker table using the alias name as &lt;WORKER NAME>.
select FIRST_NAME as worker_name from worker;


-- 2.  Write an SQL query to fetch "FIRST_NAME" from Worker table in upper case.
select upper(FIRST_NAME) as name from worker ; 


-- 3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct(DEPARTMENT) from Worker;

-- 4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
select substring(FIRST_NAME ,1, 3 ) as charname from Worker;

-- 5. Write an SQL query to find the position of the alphabet ('a') in the first name column 'Amitabh' from Worker table.
select instr(FIRST_NAME , 'a') from Worker where FIRST_NAME = "Amitabh";

-- 6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(FIRST_NAME) from Worker;

-- 7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select ltrim(FIRST_NAME) from Worker;

-- 8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct(DEPARTMENT) , length(DEPARTMENT) from Worker;

-- 9. Write an SQL query to print the FIRST_NAME from Worker table after replacing 'a' with 'A'.
select replace(FIRST_NAME , 'a' , 'A') from Worker;

-- 10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
select concat(FIRST_NAME ,' ' , LAST_NAME) as COMPLETE_NAME from Worker;

-- 11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from Worker order by FIRST_NAME asc;

-- 12.Print all Worker details ordered by FIRST_NAME Ascending and DEPARTMENT Descending:
select * from Worker order by FIRST_NAME asc , DEPARTMENT desc;

-- 13. print details for Workers with the first name as "Vipul" and "Satish" from Worker table.
select * from Worker where FIRST_NAME = "Vipul" or FIRST_NAME = "Satish";

-- 14. Write an SQL query to print details of Workers with DEPARTMENT name as "Admin".
select * from Worker where DEPARTMENT ="Admin";

-- 15. Write an SQL query to print details of the Workers whose FIRST_NAME contains 'a'.
select * from worker where FIRST_NAME like '%a%';

-- 16. Write an SQL query to print details of the Workers whose FIRST_NAME ends with 'a'.
select * from Worker where FIRST_NAME like '%a';

-- 17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with 'h' and contains six alphabets.
select * from Worker where FIRST_NAME like '%h' and length(FIRST_NAME) = 6;

-- 18. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from Worker where SALARY between 100000 and 500000;

-- 19. Write an SQL query to print details of the Workers who have joined in Feb'2014.
select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE)=02;

-- 20. Write an SQL query to fetch the count of employees working in the department 'Admin'.
select count(*) as count_employees from worker where department = "Admin"; 

-- 21. Write an SQL query to fetch worker names with salaries >= 50000 and &lt;= 100000.
select concat(FIRST_NAME ,' ' , LAST_NAME) as worker_name from worker where SALARY between 50000 and 100000;

-- 22. Write an SQL query to fetch the no. of workers for each department in the descending order.
select DEPARTMENT , count(*) as number_worker from worker group by DEPARTMENT order by number_worker desc;

-- 23. Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker  JOIN Title  ON Worker.WORKER_ID = Title.WORKER_REF_ID WHERE Title.WORKER_TITLE = 'Manager';

-- 24. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select SALARY , count(*) as count  from Worker group by SALARY having count(*)>1;

-- 25. Write an SQL query to show only odd rows from a table
select * from Worker where mod(WORKER_ID , 2) <> 0;

-- 26. Write an SQL query to show only even rows from a table.
select * from Worker where mod(WORKER_ID , 2) =0;

-- 27. Write an SQL query to clone a new table from another table.
CREATE TABLE WorkerClone as select * from worker;
select * from WorkerClone;

-- 28. Write an SQL query to fetch intersecting records of two tables.
select * from worker inner join Title on worker.WORKER_ID = Title.WORKER_REF_ID;
select * from worker inner join Bonus on worker.WORKER_ID = Bonus.WORKER_REF_ID;

-- 29. Write an SQL query to show records from one table that another table does not have.
select * from worker left join Bonus on worker.WORKER_ID = Bonus.WORKER_REF_ID where Bonus.WORKER_REF_ID is null;

-- 30. Write an SQL query to show the current date and time.
select now();

-- 31. Write an SQL query to show the top n (say 5) records of a table.
select * from worker limit 5;

-- 32. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select distinct(salary) from worker order by salary desc limit 4,1;

-- 33. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
SELECT SALARY FROM Worker w1
WHERE 4 = (
    SELECT COUNT(DISTINCT w2.SALARY)
    FROM Worker w2
    WHERE w2.SALARY > w1.SALARY
);

-- 34. Write an SQL query to fetch the list of employees with the same salary.
SELECT w1.* FROM Worker w1, Worker w2
WHERE w1.SALARY = w2.SALARY AND w1.WORKER_ID != w2.WORKER_ID;

-- 35. Write an SQL query to show the second highest salary from a table.
SELECT MAX(SALARY) FROM Worker
WHERE SALARY NOT IN (SELECT MAX(SALARY) FROM Worker);

-- 36. Write an SQL query to show one row twice in results from a table.
SELECT * FROM Worker WHERE WORKER_ID = 1
UNION ALL
SELECT * FROM Worker WHERE WORKER_ID = 1;

-- 37. Write an SQL query to fetch intersecting records of two tables.
SELECT * from Worker inner join bonus on Worker.WORKER_ID = bonus.WORKER_REF_ID;

-- 38. Write an SQL query to fetch the first 50% records from a table.
SELECT * FROM Worker WHERE WORKER_ID <= (SELECT COUNT(*)/2 FROM Worker);

-- 39. Write an SQL query to fetch the departments that have less than five people in it.
SELECT DEPARTMENT, COUNT(*) AS NUM_WORKERS
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

-- 40. Write an SQL query to show all departments along with the number of people in there.
SELECT DEPARTMENT, COUNT(*) AS NUM_WORKERS
FROM Worker
GROUP BY DEPARTMENT;

-- 41. Write an SQL query to show the last record from a table.
SELECT * FROM Worker ORDER BY WORKER_ID DESC LIMIT 1;

-- 42. Write an SQL query to fetch the first row of a table.
SELECT * FROM Worker LIMIT 1;

-- 43. Write an SQL query to fetch the last five records from a table.
SELECT * from Worker order by WORKER_ID desc limit 5;

-- 44. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT w.DEPARTMENT, w.FIRST_NAME, w.SALARY
FROM Worker w
WHERE w.SALARY = (
    SELECT MAX(SALARY) FROM Worker 
    WHERE DEPARTMENT = w.DEPARTMENT
);

-- 45. Write an SQL query to fetch three max salaries from a table.
select DISTINCT SALARY from Worker order by SALARY desc limit 3;

-- 46. Write an SQL query to fetch three min salaries from a table.
select DISTINCT SALARY from Worker order by SALARY asc limit 3;

-- 47. Write an SQL query to fetch nth max salaries from a table.
SELECT DISTINCT SALARY FROM Worker ORDER BY SALARY DESC LIMIT 4;

-- 48. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select DEPARTMENT , sum(SALARY) as sum_salary from Worker group by DEPARTMENT;

-- 49. Write an SQL query to fetch the names of workers who earn the highest salary
select FIRST_NAME , LAST_NAME from Worker where salary = (select max(salary) from Worker);


