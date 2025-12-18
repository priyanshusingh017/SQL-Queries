--- Write your MySQL query statement below
with friendscount as (
    select id , 
    count(*) as friendcount 
    from (
        select requester_id as id from RequestAccepted
        union all
        select accepter_id as id from RequestAccepted
    ) all_pepole
    group by id
)

select id , friendcount as num
from friendscount 
order by friendcount desc
limit 1;