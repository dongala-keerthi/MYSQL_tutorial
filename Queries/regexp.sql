select * from customers where last_name regexp 'field';

select * from customers where first_name regexp '^a';

select * from customers where last_name regexp 'y$';

select * from customers where last_name regexp 'field|mac|rose';

select * from customers where last_name regexp '[abc]e';

select * from customers where last_name regexp '[a-h]e';
-- exercise
select * from customers 
where first_name regexp 'elka|ambur';

select * from customers where last_name regexp 'ey&|on$';

select * from customers where last_name regexp '^my|se';

select * from customers where last_name regexp 'b[ru]';

