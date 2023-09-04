--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (create , select) :
--------------------------------------------------------------------------------------------------------------------------

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



-- 6. Part C :

-- 1. Display the name of students having no website and name consists of minimum five characters.
	select * from Student
	where Website is NULL and FirstName like '_____%';

-- 2. Display all the students whose last name starts with ‘Pat’. 
	select * from Student
	where LastName like 'Pat%';

-- 3. Display all the students whose city name does not start starts with ‘b’.
	select * from Student
	where City not like 'b%';

-- 4. Display all the students whose name starts from alphabet A or H.
	select * from Student
	where FirstName like '[A,H]%';

-- 5. Display all the students whose name’s second character is vowel and of and start with H.
	select * from Student 
	where FirstName like 'h[a,e,i,o,u]%';
