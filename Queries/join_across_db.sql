-- join across databases
-- to join across databases we need to specify database name as prefix to table_name to avoid errors.
select * 
from order_items oi
join sql_inventory.products p 
on oi.product_id=p.product_id;