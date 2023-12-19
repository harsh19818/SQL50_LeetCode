# Write your MySQL query statement below
select s.student_id,s.student_name,b.subject_name,count(e.subject_name) as attended_exams
from Students as s 
join Subjects as b
left join Examinations as e
on s.student_id = e.student_id AND b.subject_name = e.subject_name
group by student_id,student_name,b.subject_name
order by student_id,b.subject_name