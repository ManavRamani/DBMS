create database Sec_15

Create table student(
	rno int identity(101,1) primary key,
	name varchar(50) not null,
	city varchar(50),
	did int foreign key references dept(did)
)

create table academic
(
	rno int identity(101,1) primary key,
	spi decimal(2,1),
	bklog int
)

create table dept
(
	did int identity(10,10) primary key,
	dname varchar(50)
)


insert into student values
('Raju','Rajkot',10),
('Amit','Ahmedabad',20),
('Sanjay','Baroda',40),
('Neha','Rajkot',20),
('Meera','Ahmedabad',30),
('Mahesh','baroda',10)

select * from student

truncate table student
update student 
set did = 10
where rno = 101


insert into dept values
('Computer'),
('Electrical'),
('Mechanical'),
('civil')

insert into academic values
(8.8,0),
(9.2,2),
(7.6,1),
(8.2,4),
(7.0,2),
(8.9,3)


-- 1. Display details of students who are from computer department.

select * from student 
where did in
(select did from dept
where dname = 'Computer')


--2. Displays name of students whose SPI is more than 8.
select * from student
where rno in
(select rno from academic
where spi > 8)


--3. Display details of students of computer department who belongs to Rajkot city.
select * from student 
where did in
(select did from dept 
where dname = 'Computer')
And
rno in(select rno from student
where city = 'Rajkot')


--4. Find total number of students of electrical department.

select count(*) from student 
where did in
(select did 
from dept 
where dname = 'electrical');



--5. Display name of student who is having maximum SPI.

select name from student 
where rno in
(select rno from academic 
where spi in
(select max(spi )from academic))


--6. Display details of students having more than 1 backlog.
select name from student
where rno in(
select rno from academic 
where bklog > 1)


--7. Display name of student who is having second highest SPI.


select name from student
where rno in
(select rno from academic where spi in(
select max(spi) from academic
where spi<(
select max(spi) from academic)))



--8. Display name of students who are either from computer department or from mechanical department.
select name from student 
where did in
(select did from dept 
where dname in('computer','mechanical'))

--9. Display name of students who are in same department as 102 studying in.

select name from student
where did in
(select did from student
where rno = 102)


--10. Display name of students whose SPI is more than 9 and who is from electrical department. 

select name from student 
where rno in
(select rno from academic 
where spi > 9)
and
did in(select did from dept
where dname = 'Electrical')