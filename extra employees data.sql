create database employees;
use employees;


select database();

show tables;create table emp(empid int primary key,
empname varchar 
(20)null,
gender char(1),
dept char(20),age int check(age>18),
salary decimal(9,2),
location varchar(25) default 'chennai',
hiredate date);
desc emp;alter table emp add column 
email varchar(25) unique after gender;
 
 desc emp;
 insert into emp values(1,'bhavyaA','f','bhav@gmail.com','IT', 24,34500,DEFAULT,'2020-12-12');
 insert into emp values(2,'sirajul','f','sirajul@gmail.com','IT',20,30500,'COIMBATORE','2022-05-30');
 

 insert into emp values(3,'sudharsan','m','sudhar@gmail.com','hr', 24,44900,'Dindugal','2023-01-01');
 insert into emp values(4,'yokesh','m','yoki@gmail.com','finance', 20,27897,DEFAULT,'2025-08-18');
 insert into emp values(5,'karthic','m','kar@gmail.com','IT', 23,39500,DEFAULT,'2024-08-18');

select * from emp
where gender = 'm';

select * from
where gemder = 'f';

--1.total number of employee
select count(*) as "total employee"from emp;
select * from emp;
select empname as employee_name,dept as department from emp;

--2. only select female employees
select * from emp;
select empname,gender from emp where gender='F';

3.show only dept of it
select * from emp;
select empname,dept from emp where dept!='it';
select empname,dept from emp where dept<>"it";




-- 5.highest paid employee

select * from emp;
select empname,salary from emp
order by salary desc limit 1; 

-- 6.average salary by department
select * from emp;
select empname,salary from emp
order by salary asc limit 1;
select dept,avg(salary) from emp
group by dept;


select * from emp;
update emp set age=22 where empid=3;

-- 7. employee higher after 2023
select * from emp;
select empname, hiredate from emp
where year(hiredate)>2023;


-- 8. top highest paid employee
select * from emp
order by salary desc
limit 3;
-- 9.difference between highest and lowest salary
select * from emp;
select dept,
min(salary) as "minimum salary",
max(salary) as"maximum salary",
max(salary)-min(salary)as difference 
from emp group by dept;
-- 10.how many deparment are there

select count(dept) from emp;
select count(distinct dept) from emp;
-- 11.what all the department are there
select dept from emp;
select distinct dept from emp;

-- 12.identity the department which have only one department  having count(*)=1;
select dept emp group by dept   






