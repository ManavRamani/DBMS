--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								Join
--------------------------------------------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- 11. Part A :

create table Cricket(
Name varchar(20),
City varchar(20),
Age int);
--1
insert into Cricket
(Name,City,Age)
values
('Sachin Tendulkar','Mumbai',30);
--2
insert into Cricket
(Name,City,Age)
values
('Rahul Dravid','Bombay',35);
--3
insert into Cricket
(Name,City,Age)
values
('M. S. Dhoni','Jharkhand',31);
--4
insert into Cricket
(Name,City,Age)
values
('Suresh Raina','Gujarat',30);

-- Table Name : Cricket 
-- Name 			City 		Age
-- Sachin Tendulkar Mumbai 		30
-- Rahul Dravid 	Bombay 		35
-- M. S. Dhoni 		Jharkhand 	31
-- Suresh Raina 	Gujarat 	30


-- Select
select * from Cricket;


-- Query :

-- 1. Create table Worldcup from cricket with all the columns.
select * into Worldcup from Cricket;
select * from Worldcup;

-- 2. Create table T20 from cricket with first two columns with no data.
select Name,City into T20 from Cricket
where 0=1;
select * from T20;

-- 3. Create table IPL From Cricket with No Data
select * into IPL from Cricket
where 0=1;
select * from IPL;

-- 4. Insert the Data into IPL from Cricket Whose Second Character Should Be ‘A’ And String Should 
-- Have At least 7 Characters in Cricket Name Field.
insert into IPL
select * from Cricket
where Name like ('_A_____%');

insert into IPL
select * from Cricket
where Name like ('_a_____%');

-- 5. Delete All the Rows From IPL.
delete from IPL;
truncate table IPL;

-- 7. Rename the Table IPL to IPL2018.
sp_rename 'IPL' , 'IPL2018';

-- 8. Destroy table T20 with All the Data.
drop table T20;
