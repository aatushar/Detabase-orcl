SELECT object_name, object_type, 
created, status FROM   user_objects
ORDER BY object_type;

DESCRIBE user_tables;

SELECT table_name FROM   user_tables;

SELECT column_name, data_type, data_length, 
data_precision, data_scale, nullable 
FROM   user_tab_columns

WHERE  table_name = 'EMPLOYEES';

DESCRIBE user_constraints

COMMENT ON TABLE employees IS 'Employee Information';
Comments can be viewed through the data dictionary 
IS 'Employee Information';

create sequence emp_222_eid
start with 101
increment By 1
maxvalue 9999
Nocache;
truncate table emp_222;

insert into emp_222_eid
values(emp_222_eid,'Rajib','1273444','rajib@gmail.com','01-jan-2023','Dhanmondi'; 


create table student_information(
sid int primary key,
sname varchar2(30),
smail varchar2(30),
sdob date,
saddress varchar(30)
);
--Trancate table student_information;
create sequence student_info
start with 1001
increment by 1
maxvalue 100000
nocache
nocycle;

insert into student_information(sid,sname,smail,sdob,saddress)
values(student_info.nextval,'Tushar','tushar@gmail.com','11-jan-2023','Mirpur')

insert into student_information(sid,sname,smail,sdob,saddress)
values(student_info.nextval,'pranto','pranto@gmail.com','28-jan-2023','Mirpur')

insert into student_information(sid,sname,smail,sdob,saddress)
values(student_info.nextval,'sabit','sabit@gmail.com','31-jan-2023','Dhanmondi')

select * from student_information;


create view emp_depId_80
as

selecet * from emp_depId_80;
where department_id=80;

create view emp_join_job_jobTitle
as
select e.first_name,e.phone_number,e.hire_date,j.job title
from employees e
 
join jobs j  on j.job_id=e.job_id
where e.department_id=80;


create view emp_join_location_location_id
as
select e.first_name, e.phone_number,e.salary,l.street_address, l.country_id
from employees e

join departments d on d.department_id=e.department_id
join location l on l.location_id=d.location_id
where d.department_id=60;

