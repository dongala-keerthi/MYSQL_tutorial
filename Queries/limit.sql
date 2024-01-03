select * from customers;

select * from customers limit 5;

-- page1:1-3
-- page2:4-6
-- page3:7-9
select * from customers limit 6,3;
-- 6 is offset
-- 3 is limit of records

-- exercise: top 3 loyal customers(customers with more points)
select * from customers 
order by points desc
limit 3;

select * from customers limit 5,5;

-- offset(it excludes the rows and must be used after order y)
-- won't work in mysql
/*select first_name, last_name
from customers
order by points
offset 4 rows;*/
