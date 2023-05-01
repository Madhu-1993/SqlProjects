select name from sys.databases;
exec sp_databases;
create database Movie;
use Movie;

Create table Movies(MovieId int,MovieName varchar(20),ReleaseYear varchar(20),BoxOfficeCollection int);
 Insert into Movies values(3455,'Awatar','2016',3000000),(3445,'HarryPorter','2010',2000000),
 (2345,'SpiderMan','2009',300000);
 select *from Movies;

 Create table Role(RollId int,RollName varchar(30));
 select *from Role;
 insert into Role values(1,'Producer'),(2,'Director'),(3,'Hero'),(4,'Heroine'),(5,'Villain');
 select *from Role;
 Create table Celebrty(CelebrityId int,CelebrityName varchar(20),Birthday varchar(20),PhNo int,Email varchar(30));
 insert into Celebrty values(21,'Salman Khan','20/4/80',4556783,'asjfhvhfj@gmail.com'),
 (22,'Shsharukh khan','12/06/78',57563626,'gfder@gmail.com');
 select *from Celebrty;

 Create table BollywodData(BollywoodDtaId int,CelebrityId int,MovieId int,RollId int);
 insert into BollywodData values(101,21,3455,1),(102,22,3445,2);
 select *from BollywodData;