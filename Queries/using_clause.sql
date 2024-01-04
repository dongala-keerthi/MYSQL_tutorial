use sql_store;
-- USING CLAUSE
-- we use USING clause in join condition if both tables are are joined using same column name 
-- It is used to simplify the query
select
 o.order_id,
 c.first_name
from orders o
join customers c 
 -- on o.customer_id=c.customer_id we replace this line with USING cluse followed by column name.
 using(customer_id);
 
-- We can also use USING clause for both inner and outer joins
select 
 o.order_id,
 c.first_name,
 sh.name as shipper
from orders o
left join customers c
 using(customer_id)
left join shippers sh
 using(shipper_id);
-- but we cannot use USING clause with columns of different names but same data even.

-- we can also use USING clause for compound join conditions 
-- To make query more readable and simple

-- using normal join
select *
from order_items oi
join order_item_notes oin 
 on oi.order_id=oin.order_id and oi.product_id=oin.product_id;
 
-- simplify using USING CLAUSE
select * 
 from order_items oi
 join order_item_notes oin
  using(order_id,product_id);
  
-- sing outer join
select * 
from order_items oi
left join order_item_notes oin
  using(order_id,product_id);
  
-- exercise: use sql_invoicing database with payments table
-- using USING clause
use sql_invoicing;
select 
 p.date,
 c.name as client,
 p.amount,
 pm.name as payment_method
from payments p
join clients c
 using(client_id)
left join payment_methods pm
 on p.payment_method=pm.payment_method_id;
 

