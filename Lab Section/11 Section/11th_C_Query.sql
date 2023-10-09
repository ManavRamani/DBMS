--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 11. Part C :Perform following queries on Employee table.


-- 1. Delete all the Rows from Employee_info.
delete from Employee_info;
truncate table Employee_info;

-- 2. Delete the Detail of employee from Employee Whose City is Rajkot.
delete from Employee
where City = 'Rajkot';

-- 3. Rename the Table Employee to New_Employee.
sp_rename 'Employee','New_Employee';

-- 4. Delete all the records from New_Employee table.
delete from New_Employee;
truncate table New_Employee;

-- 5. Destroy table New_Employee with all the Data.
drop table New_Employee;
