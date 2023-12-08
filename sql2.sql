show databases;

use Customers;

show tables;

select *from customerinfo;

drop table customerinfo;

show tables;

create table customerInfo(id integer auto_increment, 
firstName varchar(255), lastName varchar(255), salary integer,
primary key(id));

select *from customerInfo;

insert into customerInfo(firstName, lastName, salary) values
('John', 'Daniel', 5000),
('Krish', 'Naik', 60000);

insert into customerInfo(firstName, lastName, salary) values
('Ankit', 'Sharma', NULL);

select *from customerInfo;

select * from customerInfo
where salary is not null;

#sql update statement to replace null values
update customerInfo
set salary = 5000
where id = 3;

delete from customerInfo where id=1;

##SQL alter table
#add column in existing table

alter table customerInfo add email varchar(255);

update customerInfo set email = 'krishnaik@gmail.com' where id=2; 
update customerInfo set email = 'ankit120@gmail.com' where id = 3;

alter table customerInfo add DOB date;
alter table customerInfo modify dob year;
select * from customerInfo;

desc customerInfo;

alter table customerInfo drop column email;
