# Write your MySQL query statement below
(select u.name as results
from MovieRating as m
left join Users as u
on m.user_id=u.user_id
group by m.user_id
order by count(rating) desc , u.name
limit 1)
UNION ALL
(select title as results
from MovieRating as a
left join Movies as s
on a.movie_id=s.movie_id
where created_at between '2020-02-01' and '2020-02-29'
group by a.movie_id
order by avg(rating) desc , title
limit 1)