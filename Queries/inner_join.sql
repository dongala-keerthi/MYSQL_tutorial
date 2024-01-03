-- inner joins
-- here we use ON keyword to specify the inner join with what common column we are joining the table
-- here customer_id is common column
select* 
from orders
join customers 
on  orders.customer_id=customers.customer_id;

-- selecting specified columns
select order_id,first_name,last_name 
from orders
join customers 
on  orders.customer_id=customers.customer_id;

-- selecting the common column 
/*select order_id,customer_id,first_name, last_name
from orders 
join customers
on orders.customer_id=customers.customer_id;
--as it is ambiguous because it confuses to take the customer_id column from which table!!
*/

-- resolving the problem
select order_id,orders.customer_id ,first_name, last_name
from orders  
join customers 
on orders.customer_id=customers.customer_id;
-- applying aliases to reduce complexity
select order_id,o.customer_id ,first_name, last_name
from orders  o
join customers c
on o.customer_id=c.customer_id;

-- exercise
-- order_id followed by name, quantity ,unit_price from order_items and products tables.
select * from products;
select order_id,p.product_id, name,o.unit_price,quantity
from order_items o
join products p
on o.product_id=p.product_id;