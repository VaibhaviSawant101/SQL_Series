show databases;
use customers;
show tables;

create table person(
id int not null,
firstName varchar(255) not null,
lastName varchar(255) not null,
age int,
primary key(id));

desc person;

alter table person drop primary key;
alter table person add constraint pk_person primary key(id, lastName);

#Foreign key
alter table person drop primary key;
alter table person add salary int;
alter table person add primary key(id);

show tables;

create table department(
id int not null,
department_id int not null,
departmentName varchar(255) not null,
primary key(department_id),
constraint fk_persondepartment foreign key(id) references person(id)
);

desc department;

desc person;
alter table person add check(salary > 5000);

insert into person values(1, 'Vihang', 'Patel', 23, 8000);
select * from person;
insert into person values(1, 'Vihang', 'Patel', 23, 200);

#default constraint
alter table person add cityName varchar(255) default 'Bangalore';

alter table person
alter cityName drop default;

