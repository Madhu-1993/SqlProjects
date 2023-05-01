select name from databases;
exec sp_databases;
create database Student;
use Student;

create table Stud(roll_no int primary key,s_name varchar(20),branch varchar(20)
,percentage int);

select*from Stud;