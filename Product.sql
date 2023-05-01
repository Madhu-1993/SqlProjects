select name from databases;
exec sp_databases;
create database Product;
use Product;

create table Prod(p_id int primary key, p_name varchar(20),company varchar(20),price int);

select *from Prod;