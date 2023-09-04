--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 7. Part B :

-- 
-- create table Employee :
-- 

create table Employee
(EmpNo int,
EmpName varchar(30),
JoiningDate date,
Salary decimal(8,2),
Commission int,
City varchar(20));

-- select Query : 
select * from Employee;


-- Insert data into Employee :

--1
insert into Employee
(EmpNo, EmpName, JoiningDate, Salary, Commission, City)
values
(101,'Keyur','5-1-02',12000.00,4500,'Rajkot');

--2
insert into Employee
(EmpNo, EmpName, JoiningDate, Salary, Commission, City)
values
(102,'Hardik','15-feb-04',14000.00,2500,'Ahmedabad');

--3
insert into Employee
(EmpNo, EmpName, JoiningDate, Salary, Commission, City)
values
(103,'Kajal','14-mar-06',15000.00,3000,'Baroda');

--4
insert into Employee
(EmpNo, EmpName, JoiningDate, Salary, Commission, City)
values
(104,'Bhoomi','23-jun-05',12500.00,1000,'Ahmedabad');

--5
insert into Employee
(EmpNo, EmpName, JoiningDate, Salary, Commission, City)
values
(102,'Harmit','15-feb-04',14000.00,2000,'Rajkot');



-------------------------------------------------------------------------------------------------------------
									Qeury Part
-------------------------------------------------------------------------------------------------------------

-- 1. Display the result of Salary plus Commission.
select (Salary+Commission) from Employee;

-- 2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select floor(55.2);
select floor(35.7);
select floor(-55.2);

-- 3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select ceiling(55.2);
select ceiling(35.7);
select ceiling(-55.2);

-- 4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2;
select 55%3;

-- 5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2);
select power(14,3);


