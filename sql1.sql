# Session 1
/*Multi line comment*/

show databases;
create database Customers;
use Customers;
create table customerInfo(id integer, firstName varchar(255),
lastName varchar(255));
show tables;
select *from customerInfo;
insert into customerInfo(id, firstName, lastName) values(1, 'Vaibhavi', 'Sawant');
select *from customerInfo;


