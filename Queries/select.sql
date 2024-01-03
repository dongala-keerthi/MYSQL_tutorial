USE sql_store;

-- select *
-- from customers
-- where customer_id=1;
-- order by first_name;
select 
     last_name,
     first_name,
     points,
     (points+10)*100 as 'points dicount'
from customers;

select * from products;
select 
    name,
    unit_price,
    (unit_price*1.1)  'new price'
    from products;

select 1,2;