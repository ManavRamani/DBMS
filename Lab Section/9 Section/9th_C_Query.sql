--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 9. Part C :


-- 1. Write a query to extract Day, Month, Year from JoiningDate.
select day(JoiningDate),month(JoiningDate),year(JoiningDate) from Emp_detail;


-- 2. Write a query that adds 5 years to JoiningDate.
select dateadd(year,5,JoiningDate) from Emp_detail;


-- 3. Write a query to subtract 2 months from JoiningDate.
select dateadd(month,-2,JoiningDate) from Emp_detail;


-- 4. Extract month from JoiningDate using datename () and datepart () function.
select datename(month,JoiningDate) as datename, datepart(month,JoiningDate) as datepart from Emp_detail;


-- 5. Calculate your age in years and months.
select datediff(year,'13-apr-2003',getdate()) as Year,datediff(month,'13-apr-2003',getdate())%12 as Month;