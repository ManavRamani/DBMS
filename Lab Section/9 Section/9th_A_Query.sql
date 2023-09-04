--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 9. Part A :

-- 1. Write a query to display the current date & time. Label the column Today_Date.
select getdate();

-- 2. Write a query to find new date after 365 day with reference to today.
select getdate()+365;

-- 3. Display the current date in a format that appears as may 5 1994 12:00AM.
select convert(varchar,getdate());

-- 4. Display the current date in a format that appears as 03 Jan 1995.
select convert(varchar,getdate(),106);

-- 5. Display the current date in a format that appears as Jan 04, 96.
select convert(varchar,getdate(),7);

-- 6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select datediff(month,'31-Dec-08','31-Mar-09');

-- 7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select datediff(year,'25-Jan-12','14-Sep-10');

-- 8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select datediff(hour,'25-Jan-12 7:00','26-Jan-12 10:30');

-- 9. Write a query to extract Day, Month, Year from given date 12-May-16.
select day('12-May-16'),month('12-May-16'),year('12-May-16');

-- 10. Write a query that adds 5 years to current date.
select dateadd(year,5,getdate());

-- 11. Write a query to subtract 2 months from current date.
select dateadd(month,-2,getdate());

-- 12. Extract month from current date using datename () and datepart () function.
select datename(month,getdate()) as datename, datepart(month,getdate()) as datepart;

-- 13. Write a query to find out last date of current month.
select eomonth(getdate());

-- 14. Calculate your age in years and months
select datediff(year,'13-apr-2003',getdate()) as Year,datediff(month,'13-apr-2003',getdate())%12 as Month;

