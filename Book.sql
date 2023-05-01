select name from sys.databases;

exec sp_databases;

create database Book;
use Book;

create table Author(Aid int primary key,Aname varchar(20),phno varchar(20),email varchar(20),
address varchar(25), city varchar(20));

create table book(bid int primary key,bname varchar(30),price int, Aid int,
constraint fk_Author foreign key(Aid) references Author(Aid)); 
drop database Book; 
exec sp_help book;

create table award_Master(awardtype_id int,award_name varchar(20),awardPrice int);
exec sp_help award_Master;
alter table award_Master alter column awardType_id int not null;
alter table award_Master add constraint pk_awardType primary key(awardType_id); 

create table award(award_id int primary key,awardType_id int, aid int,bid int, 
award_year int);
sp_help award;

alter table award add constraint fk_book_id foreign key(bid)references book(bid);
alter table award add constraint fk_aid foreign key(aid) references author(author_id);
alter table award add constraint fk_type foreign key(awardType_id) references 
award_Master(awardType_id);

insert into author values(1,'krolling','978446674','dfghv@gmail.com','dffggvvf','lorida');
insert into author values(2,'john','978446674','dfghv@gmail.com','dffggvvf','lorida');
insert into book values (101,'Harry porter',1000,1);
insert into book values(102,'100Days',500,2);
select *from book;
select *from Author;

select *from award_Master;
select *from award;
insert into award_Master values(10,'nobel',50000),(0,'Oscar',100000),(30,'padmshree',70000);