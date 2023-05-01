select name from sys.databases;
exec sp_databases;

create database FbUser;

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
 select *from FreindshipStatus;