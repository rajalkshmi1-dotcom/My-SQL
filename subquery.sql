create database office;
use office;

create table departments(
dept_id int primary key,
dept_name varchar(50)
);

create table employees (
emp_id int primary key,
name varchar(50),
salary int,
dept_id int,
foreign key (dept_id) references departments(dept_id)
);
insert into departments (dept_id, dept_name) values
(10,'IT'),
(20,'HR'),
(30,'SALES');
INSERT INTO employees (emp_id,name,salary,dept_id) values
(1, 'vignesh', 50000, 10),
(2, 'priya', 70000, 20),
(3, 'ravi', 60000, 10),
(4, 'kumaran', 80000, 20),
(5, 'karthick', 45000, 30);



