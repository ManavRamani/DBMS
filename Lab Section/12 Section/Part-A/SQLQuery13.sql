-- List the departments having total salaries more than 50000 and located in city Rajkot.
select Department from Employee
where City='Rajkot'
group by(Department)
having max(Salary)>50000