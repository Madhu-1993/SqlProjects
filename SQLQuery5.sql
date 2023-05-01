create table employee(eid int,ename varchar(20),salary int,gender varchar(10),dept_id int);
exec sp_help employee;

insert into employee values(101,'nikhil',78000,'male',10),(102,'sonia',60000,'female',10),
(103,'geeta',85000,'female',20);
insert into employee(eid,ename,salary)values (105,'neha',56000),(104,'ram',80000);
select *from employee;


--find all the emp whose name is end with n
select *from employee where ename like '%n';

--find emplyee whos are living in cities wiht length 5
select *from employee where city like'_____';

--find out no of employee from each dept
select dept_id, count(*) from employee where dept_id is not null group by dept_id;

--find out no of employee from each city
select city,count(*) from employee where city is not null group by city;

--find out the city name in which more then two emp are working
select city, count(*) from employee where city is not null group by city having count(*)>2;

--find out the dept where only one employee is working
select top(1) dept_id, count(*) from employee where dept_id is not null group by dept_id order by count(*);
select dept_id,count(*) from employee where dept_id is not null group by dept_id having count(*)=1;

--find out emp name which contain character i
select *from employee where ename like '%i%';