--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								Join
--------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------
-- 14 - Part-A :
-- ------------------------------------------------------------

-- 1. Display all the villages of Rajkot city.
SELECT v.Name FROM Village v
inner join City c on v.CityID=c.CityID
where c.name = 'Rajkot';

-- 2. Display city along with their villages & pin code.
select c.Name,c.pincode,v.Name from City c
inner join Village v on c.CityID=v.CityID;

-- 3. Display the city having more than one village.
select c.name from City c
inner join Village v on c.CityID=v.CityID
group by c.Name
having count(v.CityID)>1;

-- 4. Display the city having no village.
select c.name from City c
left join Village v on c.CityID=v.CityID
group by c.Name
having count(v.CityID)=0;

-- 5. Count the total number of villages in each city.
select c.name, count(c.CityID) from City c
inner join Village v on c.CityID=v.CityID
group by c.Name;

-- 6. Count the number of cities having more than one village.
select count(v.CityID) from City c
inner join Village v on c.CityID=v.CityID
where v.CityID>1
group by c.CityID
having count(v.CityID)>1;


-- ------------------------------------------------------------


-- City 
-- CityID  		Name (Unique Key) 	Pincode (Not Null) Remakrs
-- (Primary Key)
-- 1  				Rajkot 				360005 				Good 
-- 2  				Surat 				335009 				Very Good
-- 3  				Baroda 				390001 				Awesome
-- 4  				Jamnagar		 	361003 				Smart
-- 5  				Junagadh		 	362229 				Historic
-- 6  				Morvi 				363641 				Ceramic
	
create table City
(CityID int primary key,
Name varchar(25) UNIQUE,
Pincode int not null,
Remakrs VARCHAR(20));

-- -----------------------------------------------------------------------------------

-- insert data : 
-- 1
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(1,'Rajkot',360005,'Good');
-- 2
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(2,'Surat',335009,'Very Good');
-- 3
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(3,'Baroda',390001,'Awesome');
-- 4
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(4,'Jamnagar',361003,'Smart');
-- 5
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(5,'Junagadh',362229,'Historic');
-- 6
insert into  City
(CityID,Name,Pincode,Remakrs)
values
(6,'Morvi',363641,'Ceramic');


-------------------------------------------
select * from City;

----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------


-- Village 
-- VID (Primary Key) Name (Not Null) CityID (Foreign Key)
-- 101 				Raiya 			1
-- 102 				Madhapar 		1
-- 103 				Dodka 			3
-- 104 				Falla 			4
-- 105 				Bhesan 			5
-- 106 				Dhoraji 		5

-- -----------------------------------------------------------------------------------

create table Village(
VID INT Primary KEY,
Name varchar(20) not null,
CityID int Foreign Key references City(CityID));

-- insert data : 
-- 1
insert into  Village
(VID,Name,CityID)
values
(101,'Raiya',1);
-- 2
insert into  Village
(VID,Name,CityID)
values
(102,'Madhapar',1);
-- 3
insert into  Village
(VID,Name,CityID)
values
(103,'Dodka',3);
-- 4
insert into  Village
(VID,Name,CityID)
values
(104,'Falla',4);
-- 5
insert into  Village
(VID,Name,CityID)
values
(105,'Bhesan',5);
-- 6
insert into  Village
(VID,Name,CityID)
values
(106,'Dhoraji',5);


-------------------------------------------
select * from Village;

----------------------------------------------------------------------------------

Student1
Rno(PK) 	Name 	Branch 	SPI 	Bklog
101 		Raju 	CE 		8.80 	0
102 		Amit 	CE 		2.20 	3
103 		Sanjay	ME 		1.50 	6
104 		Neha 	EC 		7.65 	0
105 		Meera 	EE 		5.52 	2
106 		Mahesh 	   		4.50 	3


----------------------------------------------------------------------------------
-- Create Table Student1:
create table Student1(
Rno INT Primary KEY,
Name varchar(50) null,
Branch varchar(50) DEFAULT 'GENRAL',
SPI decimal(4,2) CHECK(SPI BETWEEN 0 AND 10), 	
BKLOG INT CHECK(BKLOG>=0));

-- 1
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(101,'Raju','CE',8.80,0);
-- 2
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(102,'Amit','CE',2.20,3);
-- 3
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(103,'Sanjay','ME',1.50,6);
-- 4
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(104,'Neha','EC',7.65,0);
-- 5
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(105,'Meera','EE',5.52,2);
-- 6
insert into  Student1
(Rno,Name,Branch,SPI,BKLOG)
values
(106,'Mahesh',NULL,4.50,3);

SELECT * FROM Student1;
-------------------------------------------------------

-------------------------------------------------------
create table Student1(
Rno INT IDENTITY Primary KEY,
Name varchar(50) null,
Branch varchar(50) NULL DEFAULT 'GENRAL',
SPI decimal(4,2) CHECK(SPI BETWEEN 0 AND 10), 	
BKLOG INT CHECK(BKLOG>=0));
-------------------------------------------------------
-- 1
insert into  Student1
(Name,Branch,SPI,BKLOG)
values
('Raju','CE',8.80,0);
-- 2
insert into  Student1
(Name,Branch,SPI,BKLOG)
values
('Amit','CE',2.20,3);
-- 3
insert into  Student1
(Name,Branch,SPI,BKLOG)
values
('Sanjay','ME',1.50,6);
-- 4
insert into  Student1
(Name,Branch,SPI,BKLOG)
values
('Neha','EC',7.65,0);
-- 5
insert into  Student1
(Name,Branch,SPI,BKLOG)
values
('Meera','EE',5.52,2);
-- 6
insert into  Student1
(Name,SPI,BKLOG)
values
('Mahesh',4.50,3);
-- 9
insert into  Student1
values
('Maha',default,4.50,3);


SELECT * FROM Student1;
----------------------------------------------------------------------------------

-- Create below table with following constraints

-- 1. Do not allow SPI more than 10
insert into  Student1
values
('Maha','EC',13,3);
	-->The INSERT statement conflicted with the CHECK constraint "CK__Student1__SPI__5441852A". The conflict occurred in database "man134", table "dbo.Student1", column 'SPI'.

-- 2. Do not allow Bklog less than 0.
insert into  Student1
values
('Maha','EC',2,-1);
	-->The INSERT statement conflicted with the CHECK constraint "CK__Student1__BKLOG__5535A963". The conflict occurred in database "man134", table "dbo.Student1", column 'BKLOG'.

-- 3. Enter the default value as ‘General’ in branch to all new records IF no other value is specified
insert into  Student1
values
('Maha',default,4.50,3);

----------------------------------------------------------------------------------
