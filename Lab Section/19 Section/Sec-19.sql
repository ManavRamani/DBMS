Create database Sec_19;

create table Person
(
	pId int identity(101,1) primary key,
	pName varchar(50) not null,
	dId int null foreign key references dept(deptId),
	salary decimal(8,2) not null, 
	joinDate datetime not null,
	city varchar(100) not null
)

create table dept
(
	deptId int identity(1,1) primary key,
	deptName varchar(50) not null unique,
	deptCode varchar(50) not null unique,
	location varchar(50) not null
)


insert into person values
('Rahul Tripathi', 2, 56000 ,'01-jan-2000' ,'Rajkot'),
('Hardik Pandya', 3, 18000, '25-sep-2001', 'Ahmedabad'),
('Bhavin Kanani', 4 ,25000, '14-May-2000', 'Baroda'),
('Bhoomi Vaishnav' ,1 ,39000, '08-feb-2005', 'Rajkot'),
('Rohit Topiya', 2, 17000, '23-jul-2001', 'Jamnagar'),
('Priya Menpara', NULL, 9000, '18-oct-2000', 'Ahmedabad'),
('Neha Sharma', 2, 34000, '25-dec-2002', 'Rajkot'),
('Nayan Goswami', 3, 25000, '01-jul-2001', 'Rajkot'),
('Mehul Bhundiya', 4, 13500, '09-jan-2005', 'Baroda'),
('Mohit Maru', 5, 14000, '25-may-2000', 'Jamnagar')

select * from Person

insert into dept values
('Admin', 'Adm', 'A-Block'),
('Computer', 'CE', 'C-Block'),
('Civil', 'CI', 'G-Block'),
('Electrical', 'EE', 'E-Block'),
('Mechanical', 'ME', 'B-Block')

select * from dept



--Part - A
--1. Find all persons with their department name & code. 
	
	select p.pname, d.deptname,d.deptCode from 
	person p
	left join
	dept d
	on d.deptId = p.dId

--2. Give department wise maximum & minimum salary with department name.

	select min(p.salary) as 'Min Salary', max(p.Salary) as 'Min Salary',d.deptname
	from Person p
	inner join
	dept d
	on p.dId=d.deptId
	group by d.deptName


--3. Find all departments whose total salary is exceeding 100000.

	select d.deptname, sum(p.salary) as 'Total Salary'
	from person p
	inner join dept d
	on d.deptId=p.did
	group by d.deptName
	having sum(p.salary)>100000



--4. Retrieve person name, salary & department name who belongs to Jamnagar city.

	select p.pname, p.salary,d.deptName 
	from Person p
	inner join
	dept d
	on p.dId = d.deptId
	where p.city = 'Jamnagar'


--5. Find all persons who does not belongs to any department.

	select p.pname from person p
	left join
	dept d
	on p.did= d.deptId
	where p.did is null




--Part - B

--1. Find department wise person counts.

select d.deptname,COUNT(pId) as 'person count' from person
inner join
dept d
on person.did = d.deptId
group by d.deptname;


--2. Find average salary of person who belongs to Ahmedabad city.

select avg(salary)as 'Average Salary' from person
where city = 'Ahmedabad';


--3. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly. (In Single Column)

select p.pname + ' earns ' + ltrim(str(p.Salary)) + ' from department '+ d.deptname+' monthly. '
from person p
join
dept d
on p.dId = d.deptId


--4. List all departments who have no persons.



--5. Find city & department wise total, average & maximum salaries.

	select p.city, d.deptname ,sum(salary) as 'Total salary',min(salary) as 'Minimum salary',max(salary) as 'Max salary'
	from person p
	inner join 
	dept d
	on p.dId = d.deptId
	group by p.city, d.deptname



--Part - C
--1. Display Unique city names.
select distinct city from person


--2. List out department names in which more than two persons.
	
select deptname from dept
where deptid in
	(select did from Person
	group by did
	having count(did) > 2)


--3. Combine person name’s first three characters with city name’s last three characters in single column.

select left(p.pname,3)+right(p.city,3) from Person p


--4. Give 10% increment in Computer department employee’s salary.

	update Person 
	set salary= (salary+ (10/100))
	from person 
	inner join 
	dept 
	on dId = deptId
	where deptName = 'Computer'


--5. Display all the person name’s who’s joining dates difference with current date 
--   is more than 365 days.

	select pname from Person
	where DATEDIFF(month,getdate(),joindate)> 12



	

	
