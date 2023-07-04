SELECT last_name, job_id, department_id, salary ,hire_date
FROM employees
ORDER BY salary DESC ;
--pamtrop with id
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &EmpLoyEe_num ;
--Using the DEFINE Command
DEFINE employee_num = 200
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num ;
UNDEFINE employee_num
--1st question retrieve the following data from Department name, Location ID
select department_name,Location_Id
from departments;


--retrieve the following data from employees last name and first name as full name, annual salary where annual salary is more than 100000 

SELECT first_name || ' '||last_name as "Full name", salary*12  as "annual salary"

from employees
where salary *12>100000

--My full name is
select 'my full name is ' || first_name ||' '|| last_name as "full name", salary*12 as "annual salary"
from employees
where salary *12>100000

