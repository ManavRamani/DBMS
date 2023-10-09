
--Employee(EID, Ename, DeptID, Salary, HOD/{EID})
create table Employee(
EID int, 
Ename varchar(20), 
DeptID int, 
Salary int,
HOD int);

INSERT INTO Employee (EID, Ename, DeptID, Salary, HOD)
VALUES
    (1, 'John Smith', 101, 60000, NULL),
    (2, 'Jane Doe', 102, 55000, 1),
    (3, 'Bob Johnson', 101, 62000, NULL),
    (4, 'Alice Williams', 103, 58000, 1),
    (5, 'Charlie Brown', 102, 54000, 3),
    (6, 'Eva Davis', 101, 61000, 3),
    (7, 'Frank Wilson', 103, 59000, 6),
    (8, 'Grace Lee', 102, 56000, 6),
    (9, 'David Taylor', 101, 63000, 3),
    (10, 'Helen Anderson', 103, 57000, 6);

select * from Employee;

-- Department(DID, Dname)
create table Department1(
DID int, 
Dname varchar(20));

INSERT INTO Department1 (DID, Dname)
VALUES
    (101, 'HR'),
    (102, 'IT'),
    (103, 'Finance'),
    (104, 'Marketing');

-- Project(PID, Pname, EID) 
create table Project(
PID int, 
Pname varcahr(20), 
EID int);

INSERT INTO Project (PID, Pname, EID)
VALUES
    (1, 'Project A', 2),
    (2, 'Project B', 4),
    (3, 'Project C', 6),
    (4, 'Project D', 8),
    (5, 'Project E', 10),
    (6, 'Project F', 3),
    (7, 'Project G', 5),
    (8, 'Project H', 7),
    (9, 'Project I', 1),
    (10, 'Project J', 9);



-- 1. List employees and their departments
select e.Ename,d.Dname from Employee e
inner join Department1 d on e.DeptID=d.DID;

-- 2. List employees and the projects they are assigned to
select e.Ename,p.Pname from Project p
inner join Employee e on p.EID=e.EID;

-- 3. List employees, their departments, and the projects they are assigned to
select e.Ename,d.Dname,p.Pname from Department1 d
inner join Employee e on d.DID=e.DeptID
inner join Project p on e.EID=p.EID

-- 4. List all employees and their departments (including employees without departments):
select e.Ename,d.Dname from Employee e
right join Department1 d on e.DeptID=d.DID
group by d.dname,e.Ename
having count(e.DeptID)=0;

-- 5. List all employees and the projects they are assigned to (including employees not assigned to any project):
select e.Ename,p.Pname from Project p
inner join Employee e on p.EID=e.EID
group by p.pname,e.Ename
having count(e.EID)=0;

-- 6. List all departments and the employees in each department (including departments with no employees):
select e.Ename,d.Dname from Employee e
right join Department1 d on e.DeptID=d.DID;

-- 7.  List all projects and the employees assigned to each project (including projects with no assigned employees)


-- 8. List all employees and their departments (including employees without departments) and all departments (including those without employees):


-- 9. Calculate the total salary per department:


-- 10. List  employees and their project count (including employees not assigned to any project):


-- 11.  List all departments and their employee count (including departments with no employees):


-- 12. List employees and their managers (HODs):


-- 13. List employees who are assigned to more than one project:


-- 14.  List employees and their project count, even if they have no projects assigned:


-- 15. List departments and the highest salary within each department (including departments with no employees):


-- 16. List employees and their colleagues (employees in the same department):


-- 17. List employees and the average salary of their department


-- 18. Retrieve Employees Who Earn More Than $50,000:


-- 19. All Employees and Their Head of Department (HOD) 


-- 20. Find Projects Without Assigned Employees:


-- 21. Retrieve Employees and Their Respective Department Names with Alias


-- 22. Find the Highest Salary Among Employees:

