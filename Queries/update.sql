use sql_invoicing;
-- updating a single row
update invoices_archived
set payment_total=100,payment_date=NULL
where invoice_id=2;
select * from invoices_archived;
-- example 2
update invoices_archived
set payment_total=100,payment_date='1-1-1'
where invoice_id=6;
select * from invoices_archived;

-- exercise
-- give any customers born before 1990 extra 50 points
use sql_store;
update customers
set points=points+50
where birth_date<'1990-01-01';
select * from customers;

-- applying subqueries in update
use sql_invoicing;
update invoices
set 
 payment_total=invoice_total*10,
 payment_date=due_date

where client_id=
           (select client_id
           from clients
		   where name='Myworks');

-- exercise
-- orders table who have no comments and have more than 3000 points update as gold customer
use sql_store;
update orders_archived
set comments='golden customer'
where order_id in (select customer_id
       from customers
       where points>=3000);



