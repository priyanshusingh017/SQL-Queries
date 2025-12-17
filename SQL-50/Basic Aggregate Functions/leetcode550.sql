--- Write your MySQL query statement below
select 
round(count(b.player_id)/(select count(distinct player_id) from Activity),2) as fraction
from (select player_id , min(event_date) as first_login from Activity group by player_id) as a
join Activity b
on a.player_id = b.player_id
and datediff(b.event_date , a.first_login)=1;