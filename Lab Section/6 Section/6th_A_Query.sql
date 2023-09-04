--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (create , select) :
--------------------------------------------------------------------------------------------------------------------------

	-- Alredy Create Database bank_info....(Student)

-- 6. Part A:




-- From the above given tables perform the following queries (LIKE Operation):

-- 1. Display the name of students whose name starts with ‘k’.
	select * from Student
	where FirstName like 'k%';

-- 2. Display the name of students whose name consists of five characters.
	select * from Student
	where FirstName like '_____';
	
-- 3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
	select FirstName,LastName from Student
	where City like '_____a';

-- 4. Display all the students whose last name ends with ‘tel’.
	select * from Student
	where LastName like '%tel';

-- 5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
	select * from Student
	where FirstName like 'ha%t';

-- 6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
	select * from Student
	where FirstName like 'k_y%';

-- 6.3 Select Query :
	select * from Student;



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

