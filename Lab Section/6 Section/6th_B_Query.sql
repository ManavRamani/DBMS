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



-- 6. Part B :

-- 1. Display the name of students having no website and name consists of five characters.
	select FirstName from Student
	where website is not NULL and FirstName like '_____';

-- 2. Display all the students whose last name consist of ‘jer’. 
	select * from Student
	where LastName like '%jer%';

-- 3. Display all the students whose city name starts with either ‘r’ or ‘b’.
	select * from Student
	where City like 'r%' or City like 'b%';

-- 4. Display all the name students having websites.
	select FirstName from Student
	where Website is not NULL;

-- 5. Display all the students whose name starts from alphabet A to H.
	select * from Student
	where FirstName like '[A-H]%';

-- 6. Display all the students whose name’s second character is vowel.
	select * from Student
	where FirstName like '_[a,e,i,o,u]%';


