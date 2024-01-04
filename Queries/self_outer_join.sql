-- self outer join using sql_hr database with employees table
-- returns even the employee has manager or not 
use sql_hr;
select
 e.employee_id,
 e.first_name,
 m.first_name as manager
from employees e
left join employees m
 on e.reports_to=m.employee_id;