create database pizza_sales_analysis;
show databases;
create table sales
( id int,
date date
);
desc sales;
use pizza_sales_analysis
alter table sales
add column time time after date;
alter table sales
rename to sale;
alter table orders
add primary key (id);
