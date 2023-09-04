-- Count the number of employees living in Rajkot or Baroda.
select count(Ename) from Employee
where City='Rajkot' or City='Baroda'