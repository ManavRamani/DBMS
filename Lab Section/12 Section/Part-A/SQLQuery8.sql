-- Display city having more than one employee.
select DISTINCT(City),count(City) from Employee
group by City
having Count(City)>1