--- Write your MySQL query statement below
with Categories as(
    select 'Low Salary' as category , 0 as lower_bound , 19999 as upper_bound
    union all
    select 'Average Salary' , 20000 , 50000
    union all
    select 'High Salary' , 50001 , 999999999
)

select c.category , 
count(a.account_id) as accounts_count
from Categories c
left join Accounts a on a.income between lower_bound and upper_bound
group by c.category
order by c.category;