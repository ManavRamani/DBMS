--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------
-- 14 - Part-B: Create table as per following schema with proper validation and try to insert data which violate your validation.
-- ------------------------------------------------------------

-- 3. Emp(Eid, Ename, Did, Cid, Salary, Experience)
create table Emp(
Eid int IDENTITY(1,1) primary key, 
Ename varchar(20), 
Did int Foreign key REFERENCES Dept1(Did), 
Cid int Foreign key REFERENCES City1(Cid), 
Salary INT, 
Experience INT);

--1 Dept(Did, Dname)
create table Dept1(
Did int IDENTITY(1,1) primary key, 
Dname varchar(20));

--2 City(Cid, Cname)
create table City1(
Cid int IDENTITY(1,1) primary key,, 
Cname varchar(20));

