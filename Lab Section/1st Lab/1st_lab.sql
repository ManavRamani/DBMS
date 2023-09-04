--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (create , select , insert) :
--------------------------------------------------------------------------------------------------------------------------

-- 1st table deposit create :
create table deposit
(actno int,
cname varchar(50),
bname varchar(50),
amount decimal(8,2),
adate datetime);

-- 1st view deposit select :
select * from deposit;

-- 1st table in insert data :
insert into deposit
values
(1,'Manav','Royal',100000.36,'8-8-23');

-- 1st view deposit select :
select * from deposit;

--------------------------------------------------------------------------------------------------------------------------

-- 2nd table student :

create table student
(studentId int,
rollno int,
sName varchar(50),
dept varchar(50));

-- 2nd table view select query :
select * from student;

-- 2nd table in insert data :
insert into student
values
(101,1,'Manav','mca');

-- 2nd table view select query :
select * from student;

-- 2.1nd table in insert data :
insert into student
(studentId,rollno,sName,dept)
values
(102,2,'Raj','mca');

-- 2.1nd table view select query :
select * from student;

-- 2.2nd table in insert data :
insert into student
(studentId,rollno,sName)
values
(103,3,'Nell');

-- 2.2nd table view select query :
select * from student;
--------------------------------------------------------------------------------------------------------------------------