
select * from customers;
select count(first_name),state
from customers
group by state
order by first_name;