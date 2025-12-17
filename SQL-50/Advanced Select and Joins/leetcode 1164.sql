--- Write your MySQL query statement below
select p.product_id ,
coalesce(
    (select p2.new_price
    from Products p2
    where change_date<='2019-08-16'
    and p2.product_id = p.product_id
    order by change_date desc
    limit 1 ),10
) as price
from (select distinct product_id from Products) p;