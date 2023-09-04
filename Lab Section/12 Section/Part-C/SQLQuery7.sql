-- Display city with the total number of employees belonging to each city. 
select DISTINCT(City),COUNT(City) from Employee
group by(City)