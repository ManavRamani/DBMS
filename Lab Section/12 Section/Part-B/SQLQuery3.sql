-- Display the total number of employees hired before 1st January, 1991.
select count(ename) from Employee
where JoininigDate<'1-Jan-91'