


-- Person
-- Column_Name   DataType       Constraints
-- WorkerID      Int            Primary Key, Auto Increment
-- FirstName     Varchar (100)  Not Null
-- LastName      Varchar (100)  Not Null
-- Salary        Decimal (8,2)  Not Null
-- JoiningDate   Datetime       Not Null
-- DepartmentID  Int            Foreign Key, Null
-- DesignationID Int            Foreign Key, Null

create table Person3(
WorkerID int identity(101,1) Primary key,
FirstName Varchar(25) NOT  NULL,
LastName Varchar(25) NOT  NULL,
Salary int NOT  NULL,
JoiningDate Datetime NOT  NULL, 
DepartmentID int Foreign key REFERENCES Department3(DepartmentID) NULL,
DesignationID int Foreign key REFERENCES Designation(DesignationID) NULL
);

-- WorkerID FirstName LastName Salary JoiningDate DepartmentID DesignationID
-- 101 Rahul Anshu 56000 01-01-1990 1 12
-- 102 Hardik Hinsu 18000 25-09-1990 2 11
-- 103 Bhavin Kamani 25000 14-05-1991 NULL 11
-- 104 Bhoomi Patel 39000 20-02-2014 1 13
-- 105 Rohit Rajgor 17000 23-07-1990 2 15
-- 106 Priya Mehta 25000 18-10-1990 2 NULL
-- 107 Neha Trivedi 18000 20-02-2014 3 15

--------------------------------------------------------------------------------------------------------------------

-- Department
-- Column_Name      DataType        Constraints
-- DepartmentID     Int             Primary Key
-- DepartmentName   Varchar (100)   Not Null, Unique

create table Department3(
DepartmentID int Primary Key,
DepartmentName Varchar(25) NOT NULL Unique
);

-- DepartmentID DepartmentName 
-- 1 Admin 
-- 2 IT
-- 3 HR
-- 4 Account

--------------------------------------------------------------------------------------------------------------------

-- Designation
-- Column_Name      DataType        Constraints
-- DesignationID    Int             Primary Key
-- DesignationName  Varchar (100)   Not Null, Unique

create table Designation(
DesignationID int Primary Key,
DesignationName Varchar(20)
);

-- DesignationID DesignationName
-- 11               Jobber
-- 12               Welder
-- 13               Clerk
-- 14               Manager
-- 15               CEO


--------------------------------------------------------------------------------------------------------------------