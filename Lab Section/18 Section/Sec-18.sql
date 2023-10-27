--Consider the same Employee table of practical no 17 and perform the following queries:
--Part - A
--1. Produce output like <Ename> works at <city> and earns <salary>.
select CONCAT(trim(ename ),' works at ', city, ' and earns ', salary)
from emp


--2. Find total number of employees whose salary is more than 5000.
select count(*) from emp 
where salary >5000


--3. Write a query to display first 4 & last 3 characters of all the employees.
select ename from emp
select left(ename,4), RIGHT(ename,3) from emp

alter table emp
alter column ename varchar(50)

update emp 
set ename = trim(ename)

--4. List the city having total salaries more than 15000 
--and employees joined after 1st January, 2014.

select city 
from emp
where
join_date > '1-jan-2014'
group by city
having sum(salary)>1500


--5. Write a query to replace “u” with “oo” in Ename.
select REPLACE(ename,'u','oo') from emp


--Part - B

--1. Display city with average salaries and total number of employees belongs to 
--each city.
select avg(salary) as 'Avg_salary', count(eid) as 'Cnt_emp'
from emp
group by city;


--2. Display total salaries paid to female employees.

select sum(salary) as 'Total_sal'
from emp
where gender='female'


--3. Display name of the employees and their experience in years.

select ename, DATEDIFF(year,join_date,getdate())
from emp


--4. Remove column department from employee table.
alter table emp
drop column dept

--5. Update the value of city from syndey to null.
update emp
set city = null
where city = 'sydney'

select * from emp


--Part - C

--1. Retrieve all Employee name, Salary & Joining date.

select ename,salary,join_date
from emp;

--2. Find out combine length of Ename & Gender.
select len(ename)+len(gender) from emp


--3. Find the difference between highest & lowest salary.
select max(salary) - min(salary) from emp

--4. Rename a column from Ename to FirstName.
sp_rename 'emp.ename', 'FirstName'


--5. Rename a table from Employee to EmpMaster.
sp_rename 'emp','EmpMaster'