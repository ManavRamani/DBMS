--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------
-- 20 - Part-C :
-- ------------------------------------------------------------

-- Student4
-- Column_Name DataType Constraints

-- Rno      Int             Primary Key
-- Name     Varchar (50)    Not Null
-- Branch   Varchar (50)    Not Null
-- SPI      Decimal (4,2)   Not Null
-- Bklog    Int             Not Null

create table Student4(
    RNo int primary key,
    Name varchar(25) NOT NULL,
    Branch varchar(25) NOT NULL,
    SPI decimal(4,2) CHECK(SPI BETWEEN 0 AND 10) NOT NULL,
    Bklog int CHECK(BKLOG>=0) NOT NULL
);

-- RNo Name     Branch  SPI     Bklog
-- 101 Raju     CE      8.80     0
-- 102 Amit     CE      2.20     3
-- 103 Sanjay   ME      1.50     6
-- 104 Neha     EC      7.65     1
-- 105 Meera    EE      5.52     2
-- 106 Mahesh   EC      4.50     3

-- 1
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(101,'Raju','CE',8.80,0);
-- 2
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(102,'Amit','CE',2.20,3);
-- 3
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(103,'Sanjay','ME',1.50,6);
-- 4
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(104,'Neha','EC',7.65,0);
-- 5
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(105,'Meera','EE',5.52,2);
-- 6
insert into  Student4
(Rno,Name,Branch,SPI,BKLOG)
values
(106,'Mahesh',NULL,4.50,3);

----------------------------------------------------------------------------------------------------------------------------


-- 1. Delete a student whose roll number is 104 from Academic view.
Delete Academic where Rno =104;

-- 2. Create a view that displays information of all students whose spi is above 8.5.
create view std1 as
select * from Student4 where spi>8.5;

-- 3. Create a view that displays 0 backlog students.
create view std2 as 
select * from Student4 where bklog = 0;

-- 4. Create a view Computer that displays CE branch data only.
create view Computer as 
select * from Student4
where Branch = 'CE';

-- 5. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC as 
select Name,SPI from Student4
where SPI < 5 and Branch = 'EC';
 
-- 6. Update the result of student Sanjay to 4.90 in Result_EC view.
update Result_EC set SPI = 4.90 where Name = 'Sanjay';

-- 7. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
create view Stu_Bklog as 
select RNo,Name,Bklog from Student4 where Name like('M%') and Bklog > 5;

-- 8. Drop Computer view form the database.
drop View Computer;

----------------------------------------------------------------------------------------------------------------------------