use sql_store;
-- inner join
select c.customer_id,c.first_name,o.order_id
from customers c
inner join orders o
 on c.customer_id=o.customer_id
order by c.customer_id;

-- left outer join 
select c.customer_id, c.first_name, o.order_id
from customers c
left outer join orders o
 on c.customer_id=o.customer_id
order by c.customer_id;

-- right outer join
select c.customer_id, c.first_name, o.order_id
from customers c
right outer join orders o
 on c.customer_id=o.customer_id
order by o.order_id;

--  exercise: products and order_items table
select p.product_id,p.name,o.quantity
from products p
left outer join order_items o
 on p.product_id=o.product_id
order by product_id;