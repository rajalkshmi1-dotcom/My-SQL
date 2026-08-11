create database BankingDB;
use BankingDB;
select database();
CREATE TABLE Customers
(
    CustomerID INT primary key,      
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    accountcreationdate date
);
drop table customers;
describe customers;