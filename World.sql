select name from databases;
exec sp_databases;

create database World;
use World;
create table Country(conId int primary key, conName varchar(20));
exec sp_help Country;

insert into Country values(101,'India'),(102,'Australiya'),(103,'USA'),(104,'China');
insert into Country values(105, 'Japan');
select*from Country;
Truncate table Country;

exec sp_help Country;
create table State(statId int primary key, stateName varchar(20), conId int constraint 
fk_Country foreign key(ConId) references Country(conId));

insert into State values(10,'Maharashtra',101),(20,'QueensLand',102),(30,'America',103),(40,'Hainan',104),
(50,'Hiranga',105);
select *from State;
Truncate table State;

create table City(cityId int primary key,cityName varchar(20),stateId int, constraint fk_State
foreign key(stateId) references State(statId));
select *from City;
Truncate table City;

insert into City values(123,'Akola',10),(124,'Sydney',20),(125,'Austin',30),(126,'Bejjing',40),(127,'Tokyo',50);
select *from City;
 exec sp_help City;
 exec sp_help State;

 --find out the country name for the state Maharashtra

select a.conName,b.stateName from State b join Country a on a.conId=b.conId where b.stateName='Maharashtra';

--find out the all the state from India

select s.stateName from State s join Country c on s.conId=c.conId where c.conName='India';

--3. Write query to find out all the city names from the Maharashtra and Gujrat state

select c.cityName from City c join State s on c.stateId=s.statId where s.stateName='Maharashtra' or s.stateName='Gujrat';

--4. Write query to find out all the state name in which only one city is present

select s.stateName, count(*) from State s join City c on s.statId=c.stateId group by s.stateName having count(*)=1;

--5. Find out the country wise state count

select c.conName, count(*) from Country c join State s on s.conId=c.conId group by conName;

--6. Find out the all state name which end with 'n'/'a' charecter

select stateName from State where stateName like '%a';