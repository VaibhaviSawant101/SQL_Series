/*
SQL Indexes
The indexes are used to retrieve data from the database more quickly 
than others. The user can not see the indexes, and they are just used to
speed up queries.
Note: Updating the table with indexes takes a lot of time than updating a 
table without indexes. It is because the indexes also need an update
So, only create indexes on those columns that will be frequently searched
against.
*/

show databases;
use customers;

show tables;
select * from person;

create index index_city_name
on person(cityName);

desc person;
create index index_age_first_name
on person(age, firstName);