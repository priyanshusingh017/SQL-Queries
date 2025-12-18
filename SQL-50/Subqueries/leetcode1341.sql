--- Write your MySQL query statement below
(
    --- Part 1. user who rated the greatest no. of movies 

    select u.name as results
    from Users u
    join MovieRating mr
    on mr.user_id = u.user_id
    group by  u.user_id , u.name 
    order by count(*) desc , u.name asc
    limit 1
)
union all
(
    --- part 2. movie name with highest average rating in FEB - 2020
    
    select m.title as results
    from Movies m
    join MovieRating mr
    on m.movie_id = mr.movie_id
    and created_at between '2020-02-01' and '2020-02-29'
    group by m.movie_id , m.title
    order by avg(mr.rating) desc , m.title asc
    limit 1
)