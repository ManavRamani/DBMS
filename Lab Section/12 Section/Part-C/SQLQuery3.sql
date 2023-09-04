-- Display the total number of employees hired before 1st January, 1991 in IT department.
select count(Eid) from Employee
where JoininigDate < '1-Jan-91' and Department='IT'