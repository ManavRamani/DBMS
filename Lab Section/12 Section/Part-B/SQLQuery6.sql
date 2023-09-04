-- List out department names in which more than two employees.
select distinct(Department),count(Eid) from Employee
group by(Department)
having count(Department)>2