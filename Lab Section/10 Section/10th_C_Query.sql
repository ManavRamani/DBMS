--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 10. Part C :

-- 1. Display name of persons who is either Employee or Customer.
select * from Employee
union
select * from Customer;

-- 2. Display name of persons who is either Employee or Customer including duplicate data.
select * from Employee
union all
select * from Customer;

-- 3. Display name of persons who is both Employee as well as Customer.
select * from Employee
intersect
select * from Customer;

-- 4. Display name of persons who are Employee but not Customer.
select * from Employee
except
select * from Customer;

-- 5. Display name of persons who are Customer but not Employee
select * from Customer
except
select * from Employee;
