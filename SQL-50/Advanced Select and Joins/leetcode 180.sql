--- Write your MySQL query statement below

-- This query finds numbers that appear at least three times consecutively in the Logs table.
select distinct l1.num as ConsecutiveNums
from Logs l1 
join Logs l2 
    on l1.id = l2.id-1 and l1.num = l2.num -- checking for second consecutive occurrence
join Logs l3
    on l1.id = l3.id-2 and l1.num = l3.num; -- checking for third consecutive occurrence

/*
-- Alternative approach using WHERE clause instead of JOINs

select distinct l1.num as ConsecutiveNums
from Logs l1, Logs l2, Logs l3 
where 
    l1.id = l2.id-1 
    and l2.id = l3.id-1
    and l1.num = l2.num
    and l2.num = l3.num;
*/