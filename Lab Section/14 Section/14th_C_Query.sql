--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								Join
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- 14 - Part-C: Create table as per following schema with proper validation and try to insert data which violate your validation.
-- ------------------------------------------------------------

-- 1. Emp(Eid, Ename, Did, Cid, Salary, Experience)
CREATE TABLE Emp(
Eid int IDENTITY(1,1) primary key, 
Ename varchar(50) not NULL, 
Did int Foreign key REFERENCES Dept2(Did), 
Cid int Foreign key REFERENCES City2(Cid), 
Salary decimal(8,2), 
Experience INT CHECK(Experience>=0) DEFAULT 0
);

-- Dept2(Did, Dname)
CREATE TABLE Dept2(
Did int IDENTITY(1,1) primary key, 
Dname varchar(50) not NULL
);

-- City2(Cid, Cname, Diid))
CREATE TABLE City2(
Cid int IDENTITY(1,1) primary key, 
Cname varchar(50)  not NULL, 
Diid int Foreign key REFERENCES District(Diid)
);

-- District(Diid, Dname, Sid)
CREATE TABLE District(
Diid int IDENTITY(1,1) primary key, 
Dname varchar(50) not NULL, 
Sid int Foreign key REFERENCES State(Sid)
);

-- State(Sid, Sname, Coid)
CREATE TABLE State(
Sid int IDENTITY(1,1) primary key, 
Sname varchar(50) not NULL, 
Coid int Foreign key REFERENCES Country(Coid)
);

-- Country(Coid, Cname)
CREATE TABLE Country(
Coid int IDENTITY(1,1) primary key, 
Cname varchar(50) not NULL
);

-----------------------------------------------------------------------
-- 2. Insert 5 records in each table.


-- 3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees.