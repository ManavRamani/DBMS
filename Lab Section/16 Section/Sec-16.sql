create database Sec_16

create table stud
(
	sid int identity(101,1) primary key,
	name varchar(100) not null,
	eno varchar(12),
	division varchar(50),
	sem int check(sem > 0 and sem<=6),
	dob datetime,
	email varchar(100) check(email like '%@gmail.com'),
	c_no varchar(50) check(len(c_no) = 10 )
)

drop table stud

insert into stud values
('Naimish Patel ','090200107051','BCX-3 ',3,'6-dec-1992','naimishp49@gmail.com',8866205253),
('firoz A. S.','090200107090','BCY-3',3,'3-may-1994','Firoz.me@gmail.com',8885999922),
('Krunal Vyas','090243107101','BCZ-5',5,'1-mar-1984','Krunal.vyas@gmail.com',9990888877),
('Vijay Patel ','090200107102','BCX-5',5,'15-feb-1985','vijay.patel123@gmail.com',8787878787),
('Vimal Trivedi','090200107103','BCY-3',3,'20-jan-1988','Maulik123@gmail.com',8789564512)

truncate table stud
select * from stud
drop table stud


--Part - A

--1. Display Name of Student who belongs to either Semester 3 or 5. (Use IN & OR)
select name from stud
where sem in(3,5)


--2. Find Student Name & Enrollment No in which Student Id between 103 to 105.

select name,eno from stud
where sid between 103 and 105


--3. Find Student Name & Enrollment No with their Email Who belongs to 5th Semeste

select name,eno,email from stud 
where sem = 5


--4. Display All the Details of first three students.
select top(3) * from stud


--5. Display Name & Enrollment no of first 30% Students who’s contact number ends with 7.
select * from stud
select top 100 percent name,eno from stud 
where c_no like '%7'




--6. Display Unique Semesters.

select distinct(sem) from stud



--7. Retrieve All the Students who have no Enrollment.

select name from stud  
where eno is null


--8. Find All Students whose Name does not start with ‘V’.

select * from stud 
where name not like 'V%'

--9. Find All Students in which Email Contains ‘3@G’ & Only Six Characters.

select * from stud 
where email like '%3@G%' and email like '______' 


--10. Find Out All the Students whose First Name Starts with F And third character must be R

select * from stud 
where name like 'f_r%'



--Part-B


--1. Find All the Student Details whose Contact No contains 877.

select *from stud
where c_no like '%877%'

--2. Display Student Name in Which Student belongs to Semester 3 & Contact Number Does Not Contains 
--8 & 9.

select * from stud 
where sem = 3
and
c_no not like '%8%' and c_no like '%9%'



--3. Find Students who born after date 01-01-1990.

select * from stud  
where dob < '1-jan-1990'

--4. Update Division to BCX-5 & Semester 5 whose Student Id Is 102.
update stud 
set division = 'BCX-5' , sem = 5
where sid =102


--5. Change the Student’s Name to Firoz Sherasiya in which Email is Firoz.Me@Gmail.Com & Contact No is 8885999922.

update stud 
set name = 'Firoz Sherasiya'
where email = ' Firoz.Me@Gmail.Com' and c_no =  8885999922



--Part - C

--1. Add one more Column City Varchar (50) in Student Table.

alter table stud
add city varchar(50)

select * from stud

--2. Remove All BCX-3 Division Students.
delete from stud 
where division = 'BCX-3'


--3. Change Column Name Email to EmailAddress.

sp_rename 'stud.email','EmailAddress'



--4. Remove All the Data from Student Table Using Truncate.
truncate table stud


--5. Write an SQL query to clone a new table Student_New from Student table with all data.

select * into student_new
from stud

select * from student_new

