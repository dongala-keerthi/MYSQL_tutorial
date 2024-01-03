select * from customers order by first_name;

select * from customers order by first_name desc;

select * from customers order by state,first_name;

select * from customers order by state desc ,first_name;

select first_name, last_name from customers order by first_name;

select first_name, last_name, 10 as points from customers order by points,first_name limit 10;

select first_name, last_name from customers order by 1,2;

-- exercise

select order_id,product_id,quantity, unit_price from order_items
where order_id=2
order by quantity*unit_price desc;

