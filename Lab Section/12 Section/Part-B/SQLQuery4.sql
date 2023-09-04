-- Display total salary of each department with total salary exceeding 35000 and sort the list by total salary.
select distinct(Department),(SUM(Salary)+35000) from Employee
group by(Department)