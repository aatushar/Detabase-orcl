create table best_teachers(
list int primary key,
name varchar2(25),
institute_name varchar2(30),
first_meet date,
address varchar2(50)
)

describe best_teachers
 
Insert into best_teachers(list,name,institute_name,first_meet,address)
values(1,'Masum shisir','MAKMC','10-jan-2015','Borabo')

Insert into best_teachers(list,name,institute_name,first_meet,address)
values(2,'Emran','IDB','28-may-2023','Dhanmodi');
commit;
select * from best_teachers;

ALter Table best_teachers
add Mobile_number number;

update best_teachers
set
Mobile_number=0154554545
where list=1;
