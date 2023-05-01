select name from sys.databases;
exec sp_databases;
create database BookLib;
use BookLib;

create table Author(authorId int primary key,Aname varchar(20),city varchar(20),country varchar(20));

create table Category(cid int primary key, descriptn varchar(20)); 

create table Bk(bookId int primary key,Title varchar(20),authorId int,
constraint fk_Author foreign key(authorId) references Author(authorId),
cId int,constraint fk_Category foreign key(cid) references Category(cid));;

alter table Bk add year int,price int,publisher varchar(20),rating int;

create table OrdDetails(orderNo int primary key,bookId int, constraint 
fk_Bk foreign key(bookId) references Bk(bookId));

alter table OrdDetails add Qty int;

sp_help Author;
sp_help Bk;
sp_help Category;
sp_help OrdDetails;

select*from Author;
select*from Bk;
select*from Category;
select*from OrdDetails;

insert into Author values(1,'John','Florida','America'),
(2,'Williams','Florida','America'),(3,'Levis','Boston','USA'), 
(4,'Harry','Rome','Italy'),(5,'Diana','Midland','USA');

insert into Category values(10,'Drama'),(20,'Horror'),(30,'Mystrey'),
(40,'Romance'),(50,'Novels');

insert into Bk values(101,'Romeo and Juliet',1,10,2015,500,'Simon & Schuster',8),
(102,'Whispers of a Ghost',2,20,2020,450,'L. James Rice',8),
(103,'The Whistler',3,30, 2016,600,'Penguin Random House',9),
(104,'Outlander',4,40,1991,590,'Diana Gabaldon',8),
(105,'The kite runner',5,50,1960,580,'Harper Lee',8);

insert into OrdDetails values(12,101,5),(22,102,10),(33,103,7),(44,104,15),
(55,105,20);

--find country wise author count
select country,count(*) from Author (Aname) where country=country;