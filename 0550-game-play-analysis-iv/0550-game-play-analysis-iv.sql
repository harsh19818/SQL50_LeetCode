# Write your MySQL query statement below
select round(count(distinct a.player_id)/(select count(distinct player_id) from Activity),2) as fraction
from (select * from Activity
where (player_id,event_date) in (select player_id,min(event_date)
 from Activity
 group by player_id)) as a
left join Activity as b
on a.player_id=b.player_id
where datediff(b.event_date,a.event_date)=1