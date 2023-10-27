--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------
-- 20 - Part-A :
-- ------------------------------------------------------------

-- Student3
-- RNo(PK) Name Branch SPI Bklog
-- 101 Raju CE 8.80 0
-- 102 Amit CE 2.20 3
-- 103 Sanjay ME 1.50 6
-- 104 Neha EC 7.65 1
-- 105 Meera EE 5.52 2
-- 106 Mahesh EC 4.50 3


-- 1. Create a view Personal with all columns.
create view Personal as
select * from Student3;

-- 2. Create a view Student_Details having columns Name, Branch & SPI. 
create view Student_Details as 
select Name,Branch,SPI FROM Student3;

-- 3. Create a view Academic having columns RNo, Name, Branch.
create view Academic as 
select RNo,Name,Branch FROM Student3;

-- 4. Create a view Student_Data having all columns but students whose bklog more than 2.
create view Student_Data as
select * from Student3
where Bklog > 2;

-- 5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
create view Student_Pattern as 
select RNo,Name,Branch FROM Student3
where Name like '____';

-- 6. Insert a new record to Academic view. (107, Meet, ME)
insert into Academic values(107,'Meet','ME');

-- 7. Update the branch of Amit from CE to ME in Student_Details view.
update Student_Details set Branch='Me' where Name = 'Amit';

-- 8. Delete a student whose roll number is 104 from Academic view.
Delete Student3 where RNo = 104;

create table Student3(
    RNo int primary key,
    Name varchar(25),
    Branch varchar(25),
    SPI decimal(4,2) CHECK(SPI BETWEEN 0 AND 10),
    Bklog int CHECK(BKLOG>=0)
);

-- 1
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(101,'Raju','CE',8.80,0);
-- 2
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(102,'Amit','CE',2.20,3);
-- 3
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(103,'Sanjay','ME',1.50,6);
-- 4
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(104,'Neha','EC',7.65,0);
-- 5
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(105,'Meera','EE',5.52,2);
-- 6
insert into  Student3
(Rno,Name,Branch,SPI,BKLOG)
values
(106,'Mahesh',NULL,4.50,3);

----------------------------------------------------------------------------------------------------------------------------