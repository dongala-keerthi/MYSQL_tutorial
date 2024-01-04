use sql_store;
-- Natural joins
-- we usually don't have control on this as it explicitly performs an operation to serach for common 
select
 o.order_id,c.first_name
from orders o
NATURAL JOIN customers c;

-- CROSS JOIN:Every record from first table is joined with every record from the second table
-- Keyword:CROSS JOIN 
-- EXPLICIT SYNTAX
select o.order_id,c.first_name
from orders o
cross join customers c
order by o.order_id;

-- IMPLICIT SYNTAX
select o.order_id, c.first_name
from orders o, customers c;

-- exercise: cross join shippers and products
-- explicit 
select *
from products p
cross join shippers sh;

-- implicit
select *
from products,shippers;
