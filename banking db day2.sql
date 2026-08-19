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
create table transactions (
transactionid int,
transactiondate date,
amount decimal (10,2),
transactiontype varchar (20) );
create table branches (
branchid int,
branchname varchar (100),
branchaddress varchar (200),
branchphone varchar (15)
);
create table accountbranches (
assignmentdate date
);
create table loans (
loanid int,
loanamount decimal (10,2),
intrestrate decimal (5,2),
startdate date,
enddate date
); 
use sakila; 

ALTER TABLE Customers
ADD DateOfBirth DATE;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);
CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);
DROP TABLE AccountBranches;
ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);
ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
describe customers;
ALTER TABLE Accounts
ADD CustomerID INT;
alter table transactions
add accountid int;
alter table transactions
add accountid int;
alter table accounts
add constraint pk_accounts
primary key(accountid);
alter table transactions
add constraint pk_transactions
primary key(transactionid);
alter table transactions
add constraint fk_transactions_accounts
foreign key(accountid)
references accounts(accountid);
ALTER TABLE loans
ADD CustomerID INT;
CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);
alter table loans
add constraint fk_loans_customers
foreign key (customerid)
references customers(customerid);
desc loans;
alter table loans
add constraint pk_loans
primary key(loanid);
ALTER TABLE Accounts
ADD branchID INT;
alter table branches
add primary key (branchid);
ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_branch1
FOREIGN KEY (branchID)
REFERENCES branches(branchID);

