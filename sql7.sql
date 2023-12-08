##SQL Joins
/*
sql joins are used to retrieve data from 2 or more tables
1. Inner Join
2. Left Join
3. Right Join
4. Full Join
5. Natural Join
*/

use customers;
show tables;
desc department;
desc student;

select * from department;
select * from student;

insert into student values
(4, 'Sham', 'Patil', 27),
(5, 'Ram', 'Dikshit', 24);

##Inner Join
select student.fname from student
inner join department
on student.studentid = department.studentid;

##Left Join
select student.fname, department.department_name from student
left join department
on student.studentid = department.studentid;

##Right Join
select student.fname, department.department_name from student
right join department
on student.studentid = department.studentid;

## Full outer join
select student.fname, department.department_name from student
right join department
on student.studentid = department.studentid
union
select student.fname, department.department_name from student
left join department
on student.studentid = department.studentid;

#cross join
select student.fname, department.department_name from student
cross join department;

#natural join
select student.fname, department.department_name from student
natural join department;
