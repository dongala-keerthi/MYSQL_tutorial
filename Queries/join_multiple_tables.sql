use sql_store;
-- here we joined 3 tables orders, customers, order_statuses
select * from orders o
join customers c
 on o.customer_id=c.customer_id
join order_statuses os
 on o.status=os.order_status_id;
 
 -- selecting specified columns
 select o.order_id, o.order_date, c.first_name,c.last_name,os.name as status
 from orders o
join customers c
 on o.customer_id=c.customer_id
join order_statuses os
 on o.status=os.order_status_id;
 
 -- exercise: use payments , clients , payment_methods tables from sql_invoicing database
 -- join tables and select specified columns like client_id, name of client, amount, payment method namae.
 
 use sql_invoicing;
 select 
  c.client_id,
  c.name,
  p.amount,
  pm.name as payment_method
from clients c
join payments p 
 on c.client_id=p.client_id
join payment_methods pm
  on p.payment_method=pm.payment_method_id;