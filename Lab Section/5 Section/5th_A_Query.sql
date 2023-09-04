--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (create , select , alter, Drop, sp_rename) :
--------------------------------------------------------------------------------------------------------------------------
-- 1st table : Student
	create table Student
		(Enrollment_Name varchar(20),
		 Name varchar(25),
		 CPI decimal(5,2),
		 Birthdate datetime);


-- Querys :-

-- From the above given tables perform the following queries (ALTER Operation):

-- 1. Add two more columns City VARCHAR (20) and Backlog INT.
	alter table Student
	add City varchar(20),
	Backlog int;

-- 2. Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35).
	alter table Student
	alter column Name varchar(35);

-- 3. Change the data type DECIMAL to INT in CPI Column.
	alter table Student
	alter column CPI int;

-- 4. Rename Column Enrollment No to ENO.
	sp_rename 'Student.Enrollment_Name','ENO';

-- 5. Delete Column City from the STUDENT table.
	alter table Student
	drop column City;

-- 6. Change name of table STUDENT to STUDENT_MASTER.
	sp_rename 'Student','STUDENT_MASTER';

-- 7. Remove the table STUDENT_MASTER.
	drop table STUDENT_MASTER;

-- 1.1 Select Query :
	select * from student;