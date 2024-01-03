select distinct state 
from customers;

select * from customers where state='VA';

select * from customers 
where birth_date> '1990-01-01';

select *
from orders
where order_date>'2019-01-01';

select * from customers 
where birth_date> '1990-01-01' and points>1000;

select * from customers 
where birth_date> '1990-01-01' or points>1000;

select * from customers 
where birth_date> '1990-01-01' or 
      (points>1000 and state='VA');
      
select * from customers 
where not(birth_date> '1990-01-01' or points>1000);

select * from order_items;

select * from order_items 
where order_id=6 and (unit_price*quantity)>30;