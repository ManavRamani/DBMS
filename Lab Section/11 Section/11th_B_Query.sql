--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 11. Part B :

-- 1. Create table Employee_detail from Employee with all the columns and data.
select * into Employee_detail from Employee;

-- 2. Create table Employee_data from Employee with first two columns with no data.
select Name,City into Employee_data from Employee
where 0=1;
select * from Employee_data;

-- 3. Create table Employee_info from Employee with no Data
select * into Employee_info from Employee
where 0=1;
select * from Employee_info;

-- 4. Insert the Data into Employee_info from Employee Whose Second Character Should Be ‘A’ And 
-- String Should Have At least 7 Characters in Name Field.
insert into Employee_info
select * from Employee
where Name like ('_A_____%');

insert into Employee_info
select * from Employee
where Name like ('_a_____%');

-- 5. Insert the Data into Employee_info from Employee Whose age is more than 32.
insert into Employee_info 
select * from Employee where Age>32;

-- Employee 
-- Name 			City	Age
-- Jay Patel		Rajkot	30
-- Rahul Dave		Baroda	35
-- Jeet Patel		Surat	31
-- Vijay Raval		Rajkot	30

-- create table Employee
create table Employee(
Name varchar(20),
City varchar(20),
Age int);

-- select Query :
select * from Employee;

-- insert data : 
-- 1
insert into  Employee
(Name,City,Age)
values
('Jay Patel','Rajkot',30);
-- 2
insert into  Employee
(Name,City,Age)
values
('Rahul Dave','Baroda',35);
-- 3
insert into  Employee
(Name,City,Age)
values
('Jeet Patel','Surat',31);
-- 4
insert into  Employee
(Name,City,Age)
values
('Vijay Raval','Rajkot',30);
