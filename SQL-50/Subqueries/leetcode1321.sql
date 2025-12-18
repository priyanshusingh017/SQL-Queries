--- Write your MySQL query statement below
with dailytotal as(
    select visited_on ,
    sum(amount) as daily_amount
    from Customer
    group by visited_on
)

select a.visited_on,
sum(b.daily_amount) as amount ,
round(avg(b.daily_amount),2) as average_amount 
from dailytotal a
join dailytotal b on b.visited_on between date_sub(a.visited_on ,interval 6 day) and a.visited_on
group by a.visited_on
having count(b.visited_on)=7
order by a.visited_on;