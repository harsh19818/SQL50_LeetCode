# Write your MySQL query statement below
select max(s.visited_on) as visited_on,sum(s.amount) as amount,round(sum(s.amount)/7,2) as average_amount
from (select * from Customer
      group by visited_on) as c
left join Customer as s
on datediff(s.visited_on,c.visited_on)<7 and s.visited_on>=c.visited_on
group by c.visited_on
# having date_format(c.visited_on,'%d') <=(select (max(date_format(visited_on,'%d'))-6) from Customer)
having datediff(max(s.visited_on),c.visited_on)=6