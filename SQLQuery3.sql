create table emplyee(eid int,ename varchar(20),salary int,city varchar(25),gender varchar(10),dept_name varchar(30));
select*from emplyee;
exec sp_help emplyee;

insert into emplyee values(101,'Akash',45000,'Pune','Male','testing'),(102,'Ankush',60000,'Mumbai','Male','Sales'),
(103,'Ankita',65000,'Pune','Female','Deveoper'),(104,'Sagar',70000,'Mumbai','Male','Sales');

select *from emplyee where city='Pune';

select *from emplyee where salary>60000 and dept_name='Mumbai';

insert into emplyee values(105,'Ayush',75000,'Mumbai','Male','Admin');

delete from emplyee where dept_name='Admin';

insert into emplyee values(106,'Pravin',80000,'Pune','Male','Hr');

select *from emplyee where dept_name='Hr';

select *from emplyee where gender='Female' and dept_name='Sales';

select *from emplyee where gender='Male' and salary<60000;

