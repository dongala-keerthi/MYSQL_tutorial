use sql_store;

-- simple join condition
select * 
from customers c
join orders o
 on c.customer_id=o.customer_id;
 
 -- implicit join syntax
 -- implicit join contains the where clause
 select * 
 from orders o,customers c  
 where o.customer_id=c.customer_id;
 
 -- cross join 
 -- if we failed to mention the where clause then cross join occurs.
 -- cross join means it creates tables for every record
  select * 
 from orders o,customers c ;
 