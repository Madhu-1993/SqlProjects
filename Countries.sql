select name from sys.databases;

exec sp_databases;
create database Countries;
use Countries;

Create table Countries(CountryId int,CountryName varchar(25));
 select *from Countries;
 insert into Countries values(1,'India'),(2,'Australia');
 select *from Countries;

 Create table Format(FormatId int,FormatName varchar(30));
 select *from Format;
 insert into Format values(1,'T20'),(2,'ODI'),(3,'TEST');
 select *from Format;

 Create table BatsMan(PlayerId int, PlayerName varchar(35),Age int,CountryId int, TotalRuns int,
 Total50s int,Total100s int,PlayerGrade varchar(10));
 insert into BatsMan values(123,'Virat', 35,1,200,50,100,'A'),(124,'Rahul',35,1,200,30,60,'A');
 select*from BatsMan;

 Create table B_F_Mapping(id int,PlayerId int,FormatId int);
 insert into B_F_Mapping values(01,123,1),(02,124,2);
 select *from B_F_Mapping;
