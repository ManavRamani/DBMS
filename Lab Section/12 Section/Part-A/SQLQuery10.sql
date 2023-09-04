-- Give total salary of each department of EMPLOYEE table.
select SUM(Salary) as IT from Employee
where Department='IT'

select SUM(Salary) as HR from Employee
where Department='HR'

select SUM(Salary) as Sal from Employee
Where Department='Admin'