# Write your MySQL query statement below
# select *
# from Insurance
# where (tiv_2015) in (select tiv_2015 from Insurance
#       group by tiv_2015
#       having count(pid)>1)
# select * 
# from Insurance
# where (pid) not in (select i.pid
# from Insurance as i
# join Insurance as s
# where i.lat=s.lat and i.lon=s.lon and i.pid!=s.pid)

select round(sum(tiv_2016),2) as tiv_2016
from (select * 
      from Insurance
      where (pid) not in (select i.pid
      from Insurance as i
      join Insurance as s
      where i.lat=s.lat and i.lon=s.lon and i.pid!=s.pid)) as p
where (p.tiv_2015) in (select tiv_2015
                      from Insurance
                      where (tiv_2015) in (select tiv_2015 from Insurance
                            group by tiv_2015
                            having count(pid)>1))