select name from databases;
exec sp_databases;
create database Customer;
use Customer;

create table Customer(Cus_id int,Cus_name varchar(20),Age int,Country varchar(20));
select *from Customer;

insert into Customer values(1,'John Doe',31,'USA'),
(2,'Robert Lunga',22,'USA'),(3,'David Robin',22,'UK'),
(4,'John Reinhardt',25,'UK'),(5,'Betty Doe',25,'UK');

select Cus_name from Customer;

select *from Customer Where Cus_name='John Doe';

select Age,Country from Customer where Country='USA';

select *from Customer where age>25;

select *from Customer where Cus_name='Betty Doe' AND Country='UK';

select Cus_name from Customer where Country='USA' AND Cus_name='Robert Lunga';

select Age from Customer where Cus_name='David Robin' or Cus_id=4;

select Cus_name from Customer where Not Country='UK';

select *from Customer where (Country='USA' or Country='Uk')
AND age<25;

select *from Customer where Not Country= 'USA' AND NOT Age=22;

select distinct Age From Customer;

select distinct Age,Country from Customer;

select count(Distinct Country) from Customer;

select count(Distinct Age) from Customer;

select COUNT(distinct Cus_name)from Customer;

select Cus_name As name from Customer;

select cus_id As cid, Country As con from Customer;

select *from Customer;

--select Cus_name, Age from Customer LIMIT 2;

select Top 2 Cus_name from Customer;

select Top 2 * from Customer;

select Cus_name, Country from Customer where Country IN ('USA');

select Cus_name, Country from Customer where Country IN('USA','UK');

select Cus_name,Country from Customer where 'USA' IN (Country);

select Cus_name, Country from Customer where Country NOT IN ('UK','UAE');

select Cus_name, Country from Customer where Country IN('USA','UK','UAE');


