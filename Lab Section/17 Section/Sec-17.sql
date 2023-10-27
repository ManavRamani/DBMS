create database Sec_17

create table emp(	eid int identity(1,1) primary key,	ename varchar(50),	gender varchar(50) check(gender in('Male','Female')),	join_date datetime,	salary decimal(6,2),	city varchar(50) not null)insert into emp values
( 'Nick', 'Male', '01-JAN-13', 4000, 'London'),
( 'Julian', 'Female', '01-OCT-14', 3000, 'New York'),
( 'Roy', 'Male', '01-JUN-16', 3500, 'London'),
( 'Tom', 'Male', NULL, 4500, 'London'),
( 'Jerry', 'Male', '01-FEB-13', 2800 ,'Sydney'),
( 'Philip', 'Male', '01-JAN-15', 7000, 'New York'),
( 'Sara', 'Female', '01-AUG-17', 4800, 'Sydney'),
( 'Emily', 'Female', '01-JAN-15', 5500, 'New York'),
( 'Michael', 'Male', NULL ,6500 ,'London'),
( 'John', 'Male', '01-JAN-15', 8800,'London')


--Part - A
--1. Display all the employees whose name starts with “m” and 4th character is “h”.

select ename from emp 
where ename like 'm__h%';

--2. Find the value of 3 raised to 5. Label the column as output.
select power(3,5) as 'Power'


--3. Write a query to subtract 20 days from the current date.
select DATEADD(day,-20, getdate()) as '-20 days'


--4. Write a query to display name of employees whose name starts with “j” 
--and contains “n” in their name.

select ename from emp 
where ename like'j%n%'


--5. Display 2nd to 9th character of the given string “SQL Programming”.

select SUBSTRING('SQL Programming',2,9)



Part - B
1. Display name of the employees whose city name ends with “ney” &contains six characters.
2. Write a query to convert value 15 to string.
3. Add department column with varchar (20) to Employee table.
4. Set the value of department to Marketing who belongs to London city.
5. Display all the employees whose name ends with either “n” or “y”.


--Part - C
--1. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.

select ceiling(63.1),ceiling(63.8),CEILING(-63.2)

--2. Display all employees whose joining date is not available.
select * from emp
where join_date is null


--3. Display name of the employees in capital letters and city in small letters.

select upper(ename) as 'Ename',lower(city)
from emp


--4. Change the data type of Ename from varchar (30) to char (30).

alter table emp
alter column ename char(30)


--5. Display city wise maximum salary.

select max(salary) from emp

