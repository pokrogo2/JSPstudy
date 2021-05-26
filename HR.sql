select b.rn,b.employee_id,b.first_name
from (select rownum as rn,a.employee_id,a.first_name
from (select employee_id,first_name from employees 
order by hire_date)a) b
where b.rn between 11 and 20;

select employee_id,first_name
from employees;