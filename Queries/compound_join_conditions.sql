use sql_store;
-- compound join conditions
-- using multiple conditions to join two or more tables 
-- using composite primary key
select oi.order_id, oi.product_id, oin.note
from order_items oi
join order_item_notes oin
 on oi.order_id=oin.order_id and oi.product_id=oin.product_id;