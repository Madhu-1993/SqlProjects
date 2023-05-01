create table employee(eid int,ename varchar(20),salary int,gender varchar(10),dept_id int);
exec sp_help employee;

insert into employee values(101,'nikhil',78000,'male',10),(102,'sonia',60000,'female',10),
(103,'geeta',85000,'female',20);
insert into employee(eid,ename,salary)values (105,'neha',56000),(104,'ram',80000);
select eid,salary from employee;
select*from employee;
select 5+4 as Result;
select eid,ename,salary,(salary+salary*0.12)as pf from employee;
--find all employee whose salary is more than 70000

select *from employee where salary>70000;

select *from employee where salary>70000 and salary<=80000;

select *from employee where eid=101 or eid=100 or eid=103;

select *from employee where eid in(101,103,100);  --in used in similar fields
--find employee who is female and salary is more than 75000

select *from employee where gender='female' and salary>75000;

select *from employee;

--update query

--update gender for eid 105
update employee set gender='female' where eid=105;
select *from employee;
--update dept_id as 20 where employee salary is gr than 7500 and less then 80000
update employee set dept_id=20 where salary>75000 and salary<80000;

--delete 
delete from employee where salary <60000;
delete from employee;


--How to apply keys on fields
drop table employee;

--create table employee (eid int primary key, ename varchar(20), salary int);

create table employee(eid int,ename varchar(20),salary int, primary key(eid));

insert into employee values (101,'neha',67000);
select *from employee;
insert into employee values (100,'nisha',80000);

create table dept(did int, dname varchar(20));

sp_help dept;

alter table dept add constraint d_pk primary key(did);

alter table dept drop column did;

alter table dept add did int not null;

--create table and apply priamry key
create table Kids(sid int,sname varchar(20),primary key(sid));
select *from Kids; 
sp_help Kids;

create table Div(sid int, divid int,divname varchar(20),foreign key(sid) references Kids(sid),primary key (divid));
dROP table Div;
create table Div(sid int, divid int,divname varchar(20),foreign key(sid) references Kids(sid),primary key (divid));
sp_help Div;

select *from Div;

--drop primary key

alter table Kids drop constraint PK__Kids__DDDFDD36AEF0ADB5;

alter table Div drop constraint FK__Div__sid__51851410;

--alter table Div add constraint Fk_id foreign key(sid);