--- Write your MySQL query statement below
with salary_checks as(
    select d.id,
    d.name as Department,
    e.salary as salary,
    e.name as Employee,
    dense_rank() over (partition by d.id order by e.salary desc) as rnk
    from Employee e
    join Department d
    on e.departmentId = d.id
)

select Department , Employee , Salary 
from salary_checks
where rnk <= 3
order by Department , Employee , salary desc;