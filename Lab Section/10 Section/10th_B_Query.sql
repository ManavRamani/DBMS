--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 10. Part B :




-- 1. Display name of persons who is either Employee or Customer.
select Name from Employee
union
select Name from Customer;

-- 2. Display name of persons who is either Employee or Customer including duplicate data.
select Name from Employee
union all
select Name from Customer;

-- 3. Display name of persons who is both Employee as well as Customer.
select Name from Employee
intersect
select Name from Customer;

-- 4. Display name of persons who are Employee but not Customer.
select Name from Employee
except
select Name from Customer;

-- 5. Display name of persons who are Customer but not Employee
select Name from Customer
except
select Name from Employee;


-- create table Employee
create table Employee(
EID int,
Name varchar(20));

-- insert data : 
-- 1
insert into  Employee
(EID,Name)
values
(1,'Ajay');
-- 2
insert into  Employee
(EID,Name)
values
(9,'Haresh');
-- 3
insert into  Employee
(EID,Name)
values
(5,'Manish');

-- create table Customer
create table Customer(
CID int,
Name varchar(20));

-- insert data :
-- 1
insert into  Customer
(CID,Name)
values
(5,'Ajay');
-- 2
insert into  Customer
(CID,Name)
values
(7,'Mahesh');
-- 3
insert into  Customer
(CID,Name)
values
(5,'Manish');


select * from Computer;
select * from Customer;