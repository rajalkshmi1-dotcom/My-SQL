create database product;
use product;

create table prod (
proid varchar(10) primary key,
prodname varchar(15),
category varchar(10),
price float
);

insert into prod values
('p001','laptop','electronic',25000),
('p002','mobile','electronic',20000),
('p003','table','furniture',7000),
('p004','chair','furniture',500),
('p005','pen','stationary',150);

select * from prod;
select prodname from prod;
select * from prod where price<=20000;
select prodname,price,
case
when price>12000 then "Best"
when price>10000 then "Average"
Else "Low"
end as status
from prod;






select prodname from  prod order by prodname desc;
select * from prod order by category desc,price asc;
select * from prod  where proid not in ('p002','p004');
select * from prod;
select category from prod;
select distinct category from prod;
insert into prod values ('p006','pencil','stationary',null);
missing price
select * from prod where price=null;
select * from prod where price is not null;

select *from prod limit 2;
select * from prod limit 2 offset 2;
use sakila;
select * from city;
select *from city limit 20 offset 30;
select * from city limit 30,20;
select * from city where city like 's%';
select * from city where city like '%s';
select * from city where city like '_m%';
select * from city where city like '%pol%';
select * from city where city like 's_m%';
select prodname,price,
case
when price is null then "invalid"
when price>10000 then "Average"
Else "Low"
end as status
from prod;
-- WINDOW FUNCTIONS

SELECT prodname,PRICE,
SUM(PRICE) OVER() AS "TOTPRICE"
FROM PROD;

select prodname,price,
avg(price) over() as "avgprice"
from prod;

select prodname,price,
row_number() over() as "row order"
from prod;
SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;



update prod set price=20000 where proid='p003';
select * from prod;
select prodname,price,
rank()over(order by price desc)as "rank"
from prod;

select prodname,price,
dense_rank() over(order by price desc)as "ranks"
from prod;

select prodname,category,price,
dense_rank() over(partition by category order by price desc) as "rank"
from prod;

