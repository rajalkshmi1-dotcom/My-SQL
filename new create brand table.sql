 create database brand;
 use brand;
 create table users(
 id int primary key,
 name varchar(50)
 );
 create table shoes (
 shoes_id int primary key,
 shoes_brand varchar (50)
 );
 insert into users(id,name)
 values
 (1,'bhavya'),
 (2,'rajalakshmi'),
 (3,'afrin');
 insert into shoes(shoes_id,shoes_brand)
 values
 (1,'adidas'),
 (2,'bata');
 -- cross join
 desc users;
 desc shoes;
 select * from users
 cross join shoes;
 
 