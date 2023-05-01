
select name from sys.databases;

exec sp_databases;

create database DorNet14;

use DorNet14;

create table Student(sid int,sname varchar(10));

exec sp_help Student;

select sid,sname from Student;
select *from student;
alter table student add marks int;
alter table student drop column marks;
drop table Student;
create table stud(sid int,sname varchar(20));
alter table stud add marks int;

insert into stud values(1,'Amit');
select *from stud;
insert into stud(sid,marks)values(2,89);

insert into stud values (3,'yash',66),(4,'neha',78);
insert into stud(sid,marks)values (8,90),(7,45);
select *from stud;