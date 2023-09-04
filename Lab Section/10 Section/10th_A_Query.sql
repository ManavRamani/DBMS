--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 10. Part A :

-- -----------------------------------------------------------------------------------


-- 1. Display name of students who is either in Computer or in Electrical.
select Name from Computer
union
select Name from Electrical;

-- 2. Display name of students who is either in Computer or in Electrical including duplicate data.
select Name from Computer
union all
select Name from Electrical;

-- 3. Display name of students who is in both Computer and Electrical.
select Name from Computer
intersect
select Name from Electrical;

-- 4. Display name of students who are in Computer but not in Electrical.
select Name from Computer
except
select Name from Electrical;

-- 5. Display name of students who are in Electrical but not in Computer.
select Name from Electrical
except
select Name from Computer;

-- 6. Display all the details of students who are either in Computer or in Electrical.
select * from Computer
union
select * from Electrical;

-- 7. Display all the details of students who are in both Computer and Electrical.
select * from Computer
intersect
select * from Electrical;

-- -----------------------------------------------------------------------------------




-- create table Computer
create table Computer(
RollNo int,
Name varchar(20));

-- insert data : 
-- 1
insert into  Computer
(RollNo,Name)
values
(101,'Ajay');
-- 2
insert into  Computer
(RollNo,Name)
values
(109,'Haresh');
-- 3
insert into  Computer
(RollNo,Name)
values
(115,'Manish');

-- create table Electrical
create table Electrical(
RollNo int,
Name varchar(20));

-- insert data :
-- 1
insert into  Electrical
(RollNo,Name)
values
(105,'Ajay');
-- 2
insert into  Electrical
(RollNo,Name)
values
(107,'Mahesh');
-- 3
insert into  Electrical
(RollNo,Name)
values
(115,'Manish');


select * from Computer;
select * from Electrical;