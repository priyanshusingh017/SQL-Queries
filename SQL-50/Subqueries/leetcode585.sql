--- Write your MySQL query statement below
with conditionschecks as (
    select pid , tiv_2016,
    count(*) over (partition by tiv_2015) as same_tiv2015,
    count(*) over (partition by lat , lon) as same_location
    from Insurance
)

select round(sum(tiv_2016),2) as tiv_2016
from conditionschecks
where same_tiv2015>1 and same_location=1;