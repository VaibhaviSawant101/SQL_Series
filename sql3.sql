/*
SQL Constraints 
SQL constraints are used to specify any rules for records 
in a table. Constraints can be used to limit the type of 
data that can go into a table. It ensures the accuracy and
reliability of the records in the table, and if there is any
violation between the constraint the action is aborted.
Constraints an be column level or table level. Column level
constraints apply to a column, and table level constraints
apply to the whole table
*/

show databases;
create database student;
use student;
show tables;

create table studentInfo(id integer not null,
firstName varchar(255) not null,
lastName varchar(255) not null,
age int);

desc studentInfo;

alter table studentInfo modify age int not null;
alter table studentInfo modify id int unique not null;

insert into studentInfo values(1, 'Kashish', 'Mehtra', 25);
select * from studentInfo;

alter table studentInfo add unique(firstName);

alter table studentInfo
add constraint  uc_student unique(age, firstName);

alter table studentInfo drop index uc_student;

alter table studentInfo
drop constraint uc_student;

alter table studentInfo
add primary key(id);
