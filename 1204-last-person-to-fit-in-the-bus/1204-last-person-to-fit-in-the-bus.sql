# Write your MySQL query statement below
select q.person_name
from Queue as q
join Queue as p
on q.turn >= p.turn
group by q.turn
having sum(p.weight)<=1000
order by sum(p.weight) desc
limit 1