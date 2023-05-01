Create table Book(Bid int,Bname varchar(20),Authorid int,price int);
select *from Book;
insert into Book values(1,'Csharp', 1045,500),(2,'ASP Dot-Net',4763,600),
(3,'Java',4578,560),(4,'C++',6790,400);
select *from Book;

create table Author(Authorid int,AuthorName varchar(25),phno varchar(30),email varchar(30),
Address varchar(40),city varchar(40));
insert into Author values(1045,'Herbert','576748384','sddfgds@gmail.com','**********','Pune'),
(4763,'Stephen Walther','834596695','xcvvddd@gmail.com','*********','Mumbai'),
(4578,'Jennifer Greene','978574643','cvdgdfsc@gmail.com','**********','Pune');
select *from Author;

Create table Award(Awardid int,AwardTypeId int,Bid int, Year varchar(20));
insert into Award values(23345, 40,1,'2015'),(3455,30,2,'2020'),(4556,24,3,'2023'); 

select *from Award;

Create table AwardsMaster(AwardTypeId int,AwardName varchar(30),AwardPrice int);
insert into AwardsMaster values(40,'Employee of the Month',3000),(30,'Stand Out Performance',4000),
(24,'Achiever of the Month',6000);
select *from AwardsMaster;
drop table book;
drop table Author;
drop table AwardMaster;

drop table Award;


Create table Movies(MovieId int,MovieName varchar(20),ReleaseYear varchar(20),BoxOfficeCollection int);
 Insert into Movies values(3455,'Awatar','2016',3000000),(3445,'HarryPorter','2010',2000000),
 (2345,'SpiderMan','2009',300000);
 select *from Movies;

 Create table Roles(RollId int,RollName varchar(30));
 select *from Roles;
 insert into Roles values(1,'Producer'),(2,'Director'),(3,'Hero'),(4,'Heroine'),(5,'Villain');
 
 Create table Celebrity(CelebrityId int,CelebrityName varchar(20),Birthday varchar(20),PhNo int,Email varchar(30));
 insert into Celebrity values(21,'Salman Khan','20/4/80',4556783,'asjfhvhfj@gmail.com'),
 (22,'Shsharukh khan','12/06/78',57563626,'gfder@gmail.com');
 select *from Celebrity;

 Create table BollywoodData(BollywoodDtaId int,CelebrityId int,MovieId int,RollId int);
 insert into BollywoodData values(101,21,3455,1),(102,22,3445,2);
 select *from BollywoodData;
 drop table Movies;
 drop table Roles;
drop table Celebrity;
drop table BollywoodData;

 Create table FBUsers(UserId int,UserName varchar(20),Email varchar(30),PhoneNo varchar(35),TotalPosts int);
 insert into FBUsers values(0987,'Madhuri','sjhfhtn@gmail.com','5767848392',50),
 (0867,'Ashish','fhghryeyf@gmail.com','886547458',60);
 select *from FBUsers;

 Create table Post(PostId int,UserId int,PostContent varchar(30),postImage varchar(40),
 PostVideo varchar(40));
 insert into Post values(01,0987,'Blog','Image.jpg','video'),(02,0867,'Blog','Image.jpg','video2');
 select *from Post;

 Create table Freindship(UserId int,Friendid int,FriendshipStatusCode int);
 insert into Freindship values(0987,1233,456),(0867,3467,678);
 select *from Freindship;

 Create table FreindshipStatus(StatusCode int, Status varchar(30));
 select*from FreindshipStatus;
 insert into FreindshipStatus values(1,'Family'),(2,'Freind'),(3,'Colleague'),(4,'ClassMate');
 
 Create table Countries(CountryId int,CountryName varchar(25));
 select *from Countries;
 insert into Countries values(1,'India'),(2,'Australia');

 Create table Format(FormatId int,FormatName varchar(30));
 select *from Format;
 insert into Format values(1,'T20'),(2,'ODI'),(3,'TEST');

 Create table BatsMan(PlayerId int, PlayerName varchar(35),Age int,CountryId int, TotalRuns int,
 Total50s int,Total100s int,PlayerGrade varchar(10));
 select*from BatsMan;

 Create table B_F_Mapping(id int,PlayerId int,FormatId int);
 select *from B_F_Mapping;

 Create table Student(sid int,sname varchar(30),cid int,phno varchar(30),email varchar(30),
 paidfees int);
 select*from Student;

 Create table Course(cid int,cname varchar(20),subject varchar(10),fee int,duration int);
 select *from Course;

 Create table Attendance(presentDays int);
 select *from Attendance;

 