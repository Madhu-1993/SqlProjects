select*from Course;
select*from Student;
exec sp_help Student;

insert into course values(47,'Mechanical','Mechanics',6000,30),
(48,'Computer','java',5000,20);

insert into student values(13,'sagar','674838485','dfggvdff@gmail.com',40000),
(14,'ram','987646890','dghvng@gmail.com',34000);
alter table Student drop column cid;
alter table Student add constraint fk_cid foreign key(cid) references Course(cid); 

--select course name and subject from curse table
select cname,subject from Course;

--Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values
select Distinct sname, paidfees, email from student;

--without distinct selects all values from phno column in student table
select phno from Student;

--select only the Distinct values from the column in the student table
select distinct cname from Course;

--list the no of diff sub 

select count(distinct cname) from course;

--where clause

select *from course where subject='Mechanics';

select *from Course where cname='Computer';

select *from Student where sname='Amit';

select *from student where sid=13;

select cname,subject from course where cname='computer' and subject='C++';

select *from course where cname='Electrical' or cname='Mechanical';

select * from course where not cname='Computer';

select *from course where cname='Computer' and(subject='c++' or subject='java');

select *from course where cname='computer' and not subject='c++';

--order by
select *from course order by cname;

select *from course order by cname desc;

select *from course order by fee,cname; 

select *from course order by fee,duration ; 

select *from course order by cid asc,subject desc,cname desc;

--null and not null
select sname from student where email is null;

select sname from student where email is not null;
 
 --update
 update course set subject='Physics',cname='Electrical' where cid=47;
 select*from course;

 update student set sname='Ashish' where sid=12; 
 select*from Student;

 --delete
 delete from Student where sname='Akshay';

 --dlete all the rows in the table without deleteing the table
 delete from course;

 --top
 select top 3*from course;

 select top 75 percent*from course; 

 --where clause
 select top 3 *from course where fee=5000;

 --min and max
 select min(fee) as minimumfee from course;

 select max(fee) as maximumfee from course;

 --count,avg

 select count(fee) from course;

 select avg(fee) from course;

 select sum(fee) from course;

 --like operator

 select *from Student where sname like 'a%';

 select *from Student where sname like '%h';

 select *from student where sname like '%g%';

select *from Student where sname like '____r%';

 select *from Student where sname like 'a%h';

select *from Student where sname not like '____r%';

   --wildcards character

 select *from course where subject like 'P%';

 select *from course where subject like '%va%';

 select *from course where cname like '__mputer';

 select *from course where subject like 'M__h__i_s';

 select *from Student where sname like '[!ash]%';

  select *from Student where sname like '[ash]%';

  --In operator

  select *from Course where cname in ('Electrical','Computer'); 

  select *from Course where cname not in ('Electrical','Computer'); 

  select *from course where cname in(select cname from Student);

  select *from course where fee between 3000 and 5000;

  select *from course where fee not between 5000 and 6000;

  select *from course where duration between 20 and 30 and cid not in (47,48);

  select *from Student where sname between 'Ashish' and 'ram' order by sname; 

  select *from Student where sname not between 'Ashish' and 'ram' order by sname; 
