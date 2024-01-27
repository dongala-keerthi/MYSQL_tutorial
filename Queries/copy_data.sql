-- copy data from one table to another

create table orders_archived as
select * from orders;

-- using insert statement
insert into orders_archived
select * 
from orders
where order_date<'2019-01-01';

-- exercise
use sql_invoicing;
create table invoices_archived as
select invoice_id,clients.name as client_name,invoice_total,payment_total,payment_date
from invoices 
left join clients 
 on invoices.client_id=clients.client_id
where payment_date is not null;
-- checking the results
select * from invoices_archived;