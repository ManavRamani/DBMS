--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 13. Part C :



-- 1. Display Unique city names.
select distinct City from person;

-- 2. List out department names in which more than two persons.
select d.DepartmentName from Person p inner join Department d
on p.DepartmentID = d.DepartmentId
where p.DepartmentID > 2
group by(d.DepartmentName);

-- 3. Combine person name’s first three characters with city name’s last three characters in single column.
select concat(left(p.PersonName,3),right(p.City,3)) from person p

-- 4. Give 10% increment in Computer department employee’s salary.
update person set Salary=(Salary*100)/10 from person person 
full join Department d 
on p.DepartmentID=d.DepartmentId
where d.DepartmentName='Computer';

-- 5. Display all the person name’s who’s joining dates difference with current date is more than 365 days.
select PersonName from Person
where datediff(day,JoiningDate,getdate())>365;