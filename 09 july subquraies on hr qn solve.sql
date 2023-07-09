--w3resorses- subquaryes on hr
Qn 13


SELECT FirstName, LastName, HireDate
FROM Employees
WHERE Department = (
    SELECT Department
    FROM Employees
    WHERE FirstName = 'Clara'
)
AND FirstName <> 'Clara';

Qn 14
SELECT employee_id, first_name, last_name  
FROM employees  
WHERE department_id IN  
( SELECT department_id  
FROM employees  
WHERE first_name LIKE '%T%' );

Qn 15
select employee_id, first_name,salary
From employees
where salary > 
(select AVG (salary)
from employees)
and department_id In
(select department_id
From employees
where first_name LIKE '%J%');

16.
--sub quarya
select first_name,last_name,employee_id, job_id
from employees
where department_id=
(select department_id
From departments
where location_id=
(select location_id
from locations
where city= 'Toronto'));
--join quary
select e.first_name, e.last_name, e.employee_id, e.job_id
from employees e

join departments d on d.department_id = e.department_id

join locations l on l.location_id=d.location_id

where l.city= 'Toronto';

--Qn-17
select first_name,last_name,employee_id, job_id
from employees
where salary<ALL
(select salary
from employees

where job_id = 'MK_MAN');

--qn-20
select first_name,last_name,employee_id, job_id
from employees
where salary > ALL (select avg(salary) from employees group by department_id);

--Qn -22
select departments.department_id, result1.total_amt
From departments,
(select employees.department_id, sum (employees.salary)total_amt
From employees
Group By department_id)result1
where result1.department_id =departments.department_id;

select department_id, sum(salary)
from employees

group by department_id;
Having (department_id is not null)



SELECT DepartmentID, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID;



