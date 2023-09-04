--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 9. Part B :

-- Create Table 'Emp_detail'
Create table Emp_detail
(EmpNo int,
EmpName varchar(20),
JoiningDate date,
Salary decimal(8,2),
City varchar(20));

-- select Query :
select * from Emp_detail;

-- Insert data :
-- 1 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(101,'Keyur','15-jan-02',12000.00,'Rajkot');
-- 2 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(102,'Hardik','15-feb-04',14000.00,'Ahmedabad');
-- 3 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(103,'Kajal','14-mar-06',15000.00,'Baroda');
-- 4 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(104,'Bhoomi','23-jun-05',12500.00,'Ahmedabad');
-- 5 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(102,'Harmit','15-feb-04',14000.00,'Rajkot');
-- 6 data :
	insert into Emp_detail
	(EmpNo,EmpName,JoiningDate,Salary,City)
	values
	(105,'Jay','12-mar-07',12000.00,'Surat');


-- 1. Write a query to find new date after 365 day with reference to JoiningDate.
select dateadd(day,365,JoiningDate) from Emp_detail;

-- 2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
select convert(varchar,JoiningDate) from Emp_detail;

-- 3. Display the JoiningDate in a format that appears as 03 Jan 1995.
select convert(varchar,JoiningDate,106) from Emp_detail;

-- 4. Display the JoiningDate in a format that appears as Jan 04, 96.
select convert(varchar,JoiningDate,7) from Emp_detail;

-- 5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
select datediff(month,JoiningDate,'31-Mar-09') from Emp_detail;

-- 6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
select datediff(year,JoiningDate,'14-Sep-10') from Emp_detail;
