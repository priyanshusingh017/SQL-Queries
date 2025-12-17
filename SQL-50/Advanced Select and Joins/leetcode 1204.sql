--- Write your MySQL query statement below
with runningweight as(
    select person_name ,
    sum(weight) over (order by turn) as totalrunning_weight
    from Queue
)

select person_name 
from runningweight
where totalrunning_weight<=1000
order by totalrunning_weight desc
limit 1;