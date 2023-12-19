# Write your MySQL query statement below
select p.product_name,sum(o.unit) as unit
from (select *
from Orders
where date_format(order_date,"%Y-%m") = "2020-02") as o
left join Products as p
on o.product_id=p.product_id
group by o.product_id
having sum(o.unit)>=100
# having date_format(o.order_date,'%Y-%m') = '2020-02'