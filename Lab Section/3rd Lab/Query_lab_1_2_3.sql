-------------------------------------------------------------------------------------------------------------

--1. retrieve all data from table deposit
    select * from deposit;
--2. retrieve all data from table borrow
    select * from borrow;
--3. retrieve all data from table customers
    select * from customers;
--4. display account No, customer name & Amount from deposit
    select actno,cname,amount from deposit;
--5. display loan no, amount from borrow
    select loanno,amount from borrow;
--6. display loan details of all customers who belongs to 'andheri' branch.
    select * from branch where city='andheri';
--7. give account no and amount of deposit, whose account no is equals to 106.
    select actno,amount from deposit where actno=106;
--8. give name of borrows having amount greater than 5000,
    select * from borrow where amount > 5000;
--9. give name of customers who opend account after date '1-12-96'
    select * from deposit where adate >= '1-12-96';
--10. display name of customers whose account no is less then 105.
    select * from deposit where actno < 105;


-------------------------------------------------------------------------------------------------------------
-- Part - B :

--1. display name of customers who belongs to either 'nagpur' or 'delhi'. ('OR' & 'IN') :
    select * from customers where city = 'nagpur' or city = 'delhi';
    select * from customers where city in ('nagpur','delhi');

--2. Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 :
    select cname,bname from deposit where amount > 4000 and actno < 105;

--3. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000. (AND & BETWEEN) :
    select * from borrow where amount >= 3000 and amount <= 8000;
    select * from borrow where amount between 3000 and 8000;

--4. Find all depositors who do not belongs to ‘andheri’ branch :
    select * from branch where city != 'andheri';

--5. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’
--      Or ‘M.G.ROAD’ and Account No is less than 104.
    select actno, cname, amount from deposit where bname in('karolbagh','ajni','m.g. Road') and actno < 104; 
    select actno, cname, amount from deposit where bname = 'ajni' or bname = 'm.g. Road' or bname = 'karolbagh' and actno < 104; 

--6. Display all the details of first five customers :
    select top 5 * from deposit;    

--7. Display all the details of first three depositors whose amount is greater than 1000 :
    select top 3 * from deposit where amount > 1000;

--8. Display Loan No, Customer Name of first five borrowers whose branch name 
--      does not belongs to ‘ANDHERI’ :
    select top 5 loanno,cname from borrow where bname != 'andheri';

--9. Retrieve all unique cities using DISTINCT. (Use Customers Table) :
    select distinct * from customers;

--10. Retrieve all unique branches using DISTINCT. (Use Branch Table) :
    select distinct * from branch;

--11. Retrieve all the records of customer table as per their city name in ascending order :
    -- By defualt ascending order
    select * from customers order by city;
    -- By defualt descending order
    select * from customers order by city desc;

--12. Retrieve all the records of deposit table as per their amount column in descending order :
    select * from deposit order by amount desc;

-------------------------------------------------------------------------------------------------------------
-- Part - C :   From the above given tables perform the following queries (UPDATE Operation) : 

--1. Update deposit amount of all customers from 3000 to 5000 :
    update deposit set amount=6000 where amount between 3000 and 5000;