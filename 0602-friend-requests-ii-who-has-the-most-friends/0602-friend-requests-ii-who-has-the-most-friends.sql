# # Write your MySQL query statement below
select r.requester_id as id,count(a.requester_id) as num
from ((select requester_id from RequestAccepted)
union (select accepter_id from RequestAccepted)) as r
join RequestAccepted as a
on r.requester_id=a.requester_id or r.requester_id=a.accepter_id
group by r.requester_id
order by count(a.requester_id) desc
limit 1
