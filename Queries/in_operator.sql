select * from customers where state in('VA','GA','FL');

select * from customers where state not in ('VA','GA','FL');

select * from products;
select * from products where quantity_in_stock in(49,38,72);