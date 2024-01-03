select * from customers
where last_name like 'b%';

select * from customers 
where last_name like '_y%';

select * from customers
where first_name like '%a%';

select * from customers 
where first_name like '%e_';

select * from customers
where address like'%TRAIL%' OR 
address like '%AVENUE%' 
AND phone like'%9';