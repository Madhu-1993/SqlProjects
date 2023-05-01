select name from sys.databases;
exec sp_databases;
create database Students;
use Students;

Create table Student(sid int,sname varchar(30),cid int,phno varchar(30),email varchar(30),
 paidfees int);
 insert into Student values(12,'Amit',45,'765445909','sdghds@gmail.com',50000),(32,'Akshay',46,'78654589','dhfhrn@gmail.com',25009);
 select*from Student;

 Create table Course(cid int,cname varchar(20),subject varchar(10),fee int,duration int);
 insert into Course values(45,'Electrical','EDM',5000,30),(46,'Computer','C++',3000,15);
 select *from Course;

 Create table Attendance(presentDays int);
 insert into Attendance values(80),(89);
 select *from Attendance;
