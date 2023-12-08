/*
Views
Views is a virtual table based on the result set of SQL Query
*/

show databases;
use customers;

show tables;

create table student(
studentid int auto_increment,
fname varchar(255) not null,
lname varchar(255) not null,
age int,
primary key(studentid));

desc student;

insert into student values(1, 'Krish', 'Naik', 31),
(2, 'Ram', 'Sharma', 31),
(3, 'Sita', 'Pal', 31);

select * from student;

drop table dapartment;

create table department(
studentid int auto_increment,
department_name varchar(255) not null,
foreign key(studentid) references student(studentid));


desc department;

insert into department values(1, 'CS'),
(2, 'ENTC'),
(3, 'IT');

select * from department;
select * from student;

create view student_info as
select fname, lname, age,  department.department_name from student
inner join department
using (studentid);

select * from student_info;

drop view student_info;
