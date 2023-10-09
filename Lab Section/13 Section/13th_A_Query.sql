--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								Join
--------------------------------------------------------------------------------------------------------------------------
--	1. Cross Join:
	-- Syntax:
		--	select * from t1
		--	cross join t2;
		-----------------
		--	select * from t1,t2;

-- 	2. Inner Join:
	-- Syntax:
		--	select * from t1
		--	inner join t2 
		--	on t1.c_1=t2.c_1;
		-------------------------------
		--	select c_1,c_2,c_3,cn from t1
		--	inner join t2 
		--	on t1.c_1=t2.c_1;
		-------------------------------
		--	select c_1,c_2,c_3,cn from table_name1 t1
		--	inner join table_name2 t2
		--	on t1.c_1=t2.c_1;

--  3. Outter Join:
	
	-- Left Outer Join :
		-- Syntax:
		--	select * from t1
		--	left outer join t2
		--	on t1.c_1=t2.c_1;
	
	-- Right Outer Join :
		-- Syntax:
		--	select * from t1
		--	right outer join t2
		--	on t1.c_1=t2.c_1;
	
	-- Full Outer Join :
		-- Syntax:
		--	select * from t1
		--	full outer join t2
		--	on t1.c_1=t2.c_1;
		----------------------------
		--	select * from t1
		--	 outer join t2
		--	on t1.c_1=t2.c_1;

--  4. Self Join :
	-- Syntax:
		--	
		--	


-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- 13. Part A :

-- 1. Combine information from student and result table using cross join or Cartesian product.
select * from Student 
cross join Result;
-----
select * from Student , Result;

-- 2. Display Rno, Name, Branch and SPI of all students.
select s.Rno,s.Name,s.Branch,r.SPI from Student s
left outer join Result r
on s.Rno=r.Rno;

-- 3. Display Rno, Name, Branch and SPI of CE branch’s student only.
select s.Rno,s.Name,s.Branch,r.SPI from Student s
left outer join Result r
on s.Rno=r.Rno
where s.Branch='CE';

-- 4. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select s.Rno,s.Name,s.Branch,r.SPI from Student s
left outer join Result r
on s.Rno=r.Rno
where s.Branch NOT IN ('EC');

-- 5. Display average result of each branch.
select s.Branch , avg(SPI) from Student s
left outer join Result r
on s.Rno=r.Rno
group by Branch;

-- 6. Display average result of each branch and sort them in ascending order by SPI.
select s.Branch , avg(SPI) from Student s
left outer join Result r
on s.Rno=r.Rno
group by Branch
order by avg(r.SPI);

-- 7. Display average result of CE and ME branch.
select s.Branch , avg(SPI) from Student s
left outer join Result r
on s.Rno=r.Rno
where s.Branch IN ('CE','ME')
group by Branch;

-- 8. Perform the left outer join on Student and Result tables.
select * from Student s
left outer join Result r
on s.Rno=r.Rno;

-- 9. Perform the right outer join on Student and Result tables.
select * from Student s
right outer join Result r
on s.Rno=r.Rno;

-- 10. Perform the full outer join on Student and Result tables.
select * from Student s
full outer join Result r
on s.Rno=r.Rno;

-- 11. Retrieve the names of employee along with their manager name from the Employee table.
select e1.Name as emp_name,e2.Name as mng_name 
from Employee e1 
inner join Employee e2
on e1.ManagerNo=e2.EmployeeNo;
------------------------------------------
select e1.Name as emp_name,e2.Name as mng_name 
from Employee e1 
left outer join Employee e2
on e1.ManagerNo=e2.EmployeeNo;

-- -----------------------------------------------------------------------------------


create table Student
(Rno int,
Name varchar(25),
Branch varchar(20));

-- -----------------------------------------------------------------------------------


-- insert data : 
-- 1
insert into  Student
(Rno,Name,Branch)
values
(101,'Raju','CE');
-- 2
insert into  Student
(Rno,Name,Branch)
values
(102,'Amit','CE');
-- 3
insert into  Student
(Rno,Name,Branch)
values
(103,'Sanjay','ME');
-- 4
insert into  Student
(Rno,Name,Branch)
values
(104,'Neha','EC');
-- 5
insert into  Student
(Rno,Name,Branch)
values
(105,'Meera','EE');
-- 6
insert into  Student
(Rno,Name,Branch)
values
(106,'Mahesh','ME');


-------------------------------------------
select * from Student;

----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------


create table Result
(Rno int,
SPI decimal(2,1));

-- -----------------------------------------------------------------------------------


-- insert data : 
-- 1
insert into  Result
(Rno,SPI)
values
(101,8.8);
-- 2
insert into  Result
(Rno,SPI)
values
(102,9.2);
-- 3
insert into  Result
(Rno,SPI)
values
(103,7.6);
-- 4
insert into  Result
(Rno,SPI)
values
(104,8.2);
-- 5
insert into  Result
(Rno,SPI)
values
(105,7.0);
-- 6
insert into  Result
(Rno,SPI)
values
(107,8.9);
--------------------------------------

update Result
set SPI=7.0
where Rno=105;

-------------------------------------------
select * from Result;

---------------------------------------------
-- -----------------------------------------------------------------------------------


create table Employee
(EmployeeNo varchar(10),
Name varchar(25),
ManagerNo varchar(10));

-- -----------------------------------------------------------------------------------


-- insert data : 
-- 1
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E01','Tarun',NULL);
-- 2
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E02','Rohan','E02');
-- 3
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E03','Priya','E01');
-- 4
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E04','Milan','E03');
-- 5
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E05','Jay','E01');	
-- 6
insert into  Employee
(EmployeeNo,Name,ManagerNo)
values
('E06','Anjana','E04');


-------------------------------------------
select * from Employee;

----------------------------------------------------------------------------------