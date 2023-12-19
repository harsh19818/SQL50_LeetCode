# Write your MySQL query statement below
delete p
from Person as p
join Person as s
where p.email=s.email and p.id>s.id