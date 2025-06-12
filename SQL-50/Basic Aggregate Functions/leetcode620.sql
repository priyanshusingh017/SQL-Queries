--- Write your MySQL query statement below
select * from cinema where description != "boring"  and mod(id , 2) <> 0 order by rating desc;