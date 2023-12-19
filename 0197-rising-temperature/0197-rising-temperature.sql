# Write your MySQL query statement below
select t.id 
from Weather as t,Weather as y
where Datediff(t.recordDate,y.recordDate)=1 and t.temperature>y.temperature