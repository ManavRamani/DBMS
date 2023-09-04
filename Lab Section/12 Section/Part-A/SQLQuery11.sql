-- Give average salary of each department of EMPLOYEE table without displaying the respective department name.
select avg(Salary) from Employee
where Department='IT'

select avg(Salary) from Employee
where Department='HR'

select avg(Salary) from Employee
where Department='Admin'