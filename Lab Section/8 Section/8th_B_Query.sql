--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 8. Part B :

-- 6.1 Create Table : (Student) :
	
	create table Student
		(StuID int,
		 FirstName varchar(25),
		 LastName VARCHAR(25),
		 Website VARCHAR(50),
		 City VARCHAR(25));

-- 6.2 Insert Data : (Student) :
	
	-- 1 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1011,'Keyur','Patel','techonthenet.com','Rajkot');
	-- 2 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1022,'Hardik','Shah','digminecraft.com','Ahmedabad');
	-- 3 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1033,'Kajal','Trivedi','bigactivities.com','Baroda');
	-- 4 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad');
	-- 5 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1055,'Harmit','Mitel',NULL,'Rajkot');
	-- 6 data :
	insert into Student
	(StuID,FirstName,LastName,Website,City)
	values
	(1066,'Ashok','Jani',NULL,'Baroda');


-- 6.3 Select Query :
	select * from Student;




--------------------------------------------------------------------------------------------------------------------------


-- 1. Find the length of FirstName and LastName columns.
select len(FirstName),len(LastName) from Student;

-- 2. Display FirstName and LastName columns in lower & upper case.
select lower(FirstName),upper(LastName) from Student;

-- 3. Display first three characters of FirstName column.
select left(FirstName,3) from Student;

-- 4. Display 3rd to 10th character of Website column.
select substring(Website,3,10) from Student;

-- 5. Write a query to display first 4 & Last 5 characters of Website column.
select left(Website,4),right(Website,5) from Student;
