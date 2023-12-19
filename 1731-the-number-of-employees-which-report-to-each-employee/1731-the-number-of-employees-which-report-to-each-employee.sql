# Write your MySQL query statement below
select e.employee_id,e.name,count(m.reports_to) as reports_count,round(sum(m.age)/count(m.reports_to)) as average_age
from Employees as e
join Employees as m
where e.employee_id=m.reports_to
group by m.reports_to
order by e.employee_id