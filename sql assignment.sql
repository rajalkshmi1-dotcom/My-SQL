create database learners;
use learners;
create table learner
(
id int,
sname varchar(20)
);
desc learner;
select*from learner;

INSERT INTO learner(id,sname)
values(1,'praveen'),(2,'madhav'),(3,'harsad');

delete from learner;
alter table learner add gender char(1) after id;
select*from learner;
update learner set gender='m';
update learner set gender='f',sname='madhavi'where id=2;
desc learner;
alter table learner add primary key (id);
insert into learner(id,sname)values(4,'bhavya');

create table employees (
eid int primery key,
ename varchar(50) not null,
gender char(1),
email varchar(100) unique,
dept varchar(20),
age int check (age>=18),
place varchar(50) default 'chennai',
salary decimal(10,2)
);