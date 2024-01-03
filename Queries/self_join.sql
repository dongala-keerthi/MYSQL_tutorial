use sql_hr;
-- observe the table
select * from employees;
-- self-join the table
-- here manager also employee in the table whose  employee_id equals to reports_to of other employees.
select * from employees e
join employees m
on e.reports_to=m.employee_id;
-- select specified columns
select 
e.employee_id,e.first_name,m.first_name as manager
from employees e
join employees m
on e.reports_to=m.employee_id;
