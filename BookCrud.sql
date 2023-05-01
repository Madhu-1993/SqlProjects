select name from databases;
exec sp_databases;
create database BookCrud;
use BookCrud;

create table Book1(b_id int primary key,b_name varchar(20),
author varchar(20),price int);

select *from Book1;