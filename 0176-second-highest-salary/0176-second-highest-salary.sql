# Write your MySQL query statement below
# select if(salary,salary,"null") as SecondHighestSalary
# select salary as SecondHighestSalary
select if(count(salary)=0,null,salary) as SecondHighestSalary
from ( select salary
from Employee
where (salary) not in (select max(salary) from Employee) 
order by salary desc
limit 1) as a
# from Employee
# where (salary) not in (select max(salary) from Employee) 
# order by salary desc
# limit 1
