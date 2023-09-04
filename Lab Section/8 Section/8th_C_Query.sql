--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 8. Part C :

-- 1. Put 10 space before FirstName using function.
select space(10)+(FirstName) from Student;

-- 2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select FirstName + LastName from Student;
select concat(FirstName, LastName) from Student;

-- 3. Combine all columns using + sign as well as CONCAT ().
select cast(StuID as varchar)+','+FirstName+','+LastName+','+Website+','+City from Student;

-- 4. Find reverse of FirstName column.
select reverse(FirstName) from Student;

-- 5. Repeat FirstName column 3 times.
select replicate(FirstName,3) from Student;