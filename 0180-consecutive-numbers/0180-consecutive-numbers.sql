# Write your MySQL query statement below
select distinct l.num as ConsecutiveNums 
# select l.num
from Logs as l
join Logs as g
join Logs as s
where l.id=g.id+1 and g.id=s.id+1 and l.num=g.num and g.num=s.num
# where num=num-1 and num=num+1