--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 13. Part B :


-- 1. Find all persons with their department name & code.
select p.*,d.DepartmentCode,d.DepartmentName 
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID;

-- 2. Give department wise maximum & minimum salary with department name.
select d.DepartmentName,min(p.Salary) as MinSalary,max(p.Salary) as MaxSalary 
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID
group by (d.DepartmentName);

-- 3. Find all departments whose total salary is exceeding 100000.
select d.DepartmentName,sum(p.Salary) as TotalSalary 
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID
group by (d.DepartmentName)
having sum(p.Salary) >100000;

-- 4. Retrieve person name, salary & department name who belongs to Jamnagar city.
select p.PersonName,p.Salary,p.City,d.DepartmentName 
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID
where p.City='Jamnagar';

-- 5. Find all persons who does not belongs to any department.
select distinct p.* 
from Person p cross join Department d 
where p.DepartmentID is NULL;

-- 6. Find department wise person counts.
select d.DepartmentName,count(p.DepartmentID) 
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID
group by (d.DepartmentName);

-- 7. Find average salary of person who belongs to Ahmedabad city.
select avg(p.Salary) 
from Person p 
where p.City='Ahmedabad'
group  by(City);

-- 8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly. (In Single Column)
select concat(p.PersonName,' earns ',p.Salary,' from department ',d.DepartmentName,' monthly.') from
Person p inner join Department d 
on p.DepartmentID=d.DepartmentID;

-- 9. List all departments who have no persons.
select d.DepartmentName,p.PersonName 
from Person p join Department d 
on p.DepartmentID = d.DepartmentID
where p.PersonName is NULL;

-- 10. Find city & department wise total, average & maximum salaries.
select p.City,d.DepartmentName,sum(p.Salary) as TotalSalary,avg(p.Salary) as AverageSalary,max(p.Salary) as MaxSalary
from Person p inner join Department d 
on p.DepartmentID = d.DepartmentID
group  by p.City,d.DepartmentName;


-- create table Person
create table Person(
PersonID int,
PersonName varchar(20),
DepartmentID int,
Salary int,
JoiningDate date,
City varchar(20));

-- select Query :
select * from Person;

-- insert data : 
-- 1
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(101, 'Rahul Tripathi' ,2 ,56000 ,'01-01-2000' ,'Rajkot');
-- 2
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(102, 'Hardik Pandya' ,3, 18000 ,'25-SEP-2001' ,'Ahmedabad');
-- 3
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(103, 'Bhavin Kaanni' ,4, 25000 ,'14-may-2000' ,'Baroda');
-- 4
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(104, 'Bhoomi Vaishnav', 1, 39000, '08-02-2005', 'Rajkot');
-- 5
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(105, 'Rohit Topiya' ,2, 17000 ,'23-jul-2001' ,'Jamnagar');
-- 6
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(106, 'Priya Menpara', NULL, 9000, '18-oct-2000', 'Ahmedabad');
-- 7
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(107, 'Neha Sharma', 2, 34000, '25-dec-2002', 'Rajkot');
-- 8
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(108, 'Nayan Goswami', 3, 25000, '01-07-2001', 'Rajkot');
-- 9
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(109, 'Mehul Bhundiya', 4, 13500, '09-01-2005', 'Baroda');
-- 10
insert into  Person
(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City)
values
(110, 'Mohit Maru', 5, 14000, '25-may-2000', 'Jamnagar');

--------------------------------------------------------------------------------------
-- Create table Department.
create table Department
(	
	DepartmentID int,
	DepartmentName varchar(25),
	DepartmentCode varchar(10),
	Location varchar(10)
)

-- Insert Record Into The Department Table.
insert into Department
values
(1,'Admin','Adm','A-Block')

insert into Department
values
(2,'Computer','CE','C-Block')

insert into Department
values
(3,'Civil','CI','G-Block')

insert into Department
values
(4,'Electrical','EE','E-Block')

insert into Department
values
(5,'Mechanical','ME','B-Block')

