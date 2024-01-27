use sql_store;
-- unions: We can combine multiple rows using unions from different tables also.
-- orders table labelling 1.Active 2.Archieved
select 
 order_id,
 order_date,
'Active' as status
from orders
where order_date>='2019-01-01'
UNION
select 
 order_id,
 order_date,
'Archieved' as status 
from orders
where order_date<'2019-01-01';

-- from different tables
-- name of the column depends on the order as the first table name is full_name the union column name is also full_name
select first_name as full_name
from customers 
union 
select name 
from shippers;

-- no.of colums should be same otherwise we will get an error
-- so this shows an error
/*select first_name, last_name
from customers 
union 
select name 
from shippers;*/

-- data types can be different
select points as full_name
from customers 
union 
select name 
from shippers;

-- exercise:customers table and lable them based on points they have

select
 customer_id,
 first_name,
 points,
 'Bronze' as type 
from customers
where points <1000
union
select 
 customer_id,
 first_name,
 points,
 'Silver' as type 
from customers
where points between 2000 and 3000
union
select 
 customer_id,
 first_name,
 points,
 'Gold' as type 
from customers
where points>3000
order by first_name;

 