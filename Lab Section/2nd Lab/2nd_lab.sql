--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (create , select , insert) :
--------------------------------------------------------------------------------------------------------------------------

-- 1st table deposit create :
create table deposit
(actno int,
cname varchar(50),
bname varchar(50),
amount decimal(8,2),
adate datetime);

-- 1st view deposit select :
select * from deposit;

-- 1st table in insert data :
insert into deposit
values
(1,'Manav','Royal',100000.36,'8-8-23');

-- 1st view deposit select :
select * from deposit;


--1st Insert Data :

--101
insert into deposit
(actno,cname,bname,amount,adate)
values
(101,'anil','vrce',1000.00,'1-3-95');

--102
insert into deposit
(actno,cname,bname,amount,adate)
values
(102,'sunil','ajni',5000.00,'4-1-96');

--103	not working datetime out of Range
insert into deposit
(actno,cname,bname,amount,adate)
values
(103,'mehul','karolbagh',3500.00,'17-11-95');

--103 month ma number na badle month type in char like 'NOV'
insert into deposit
(actno,cname,bname,amount,adate)
values
(103,'mehul','karolbagh',3500.00,'17-NOV-95');

--104
insert into deposit
(actno,cname,bname,amount,adate)
values
(104,'madhuri','chandi',1200.00,'17-dec-95');

--105
insert into deposit
(actno,cname,bname,amount,adate)
values
(105,'prmod','m.g. Road',3000.00,'27-mar-96');

--106
insert into deposit
(actno,cname,bname,amount,adate)
values
(106,'sandip','andheri',2000.00,'31-mar-96');

--107
insert into deposit
(actno,cname,bname,amount,adate)
values
(107,'shivani','virar',1000.00,'5-9-95');

--108
insert into deposit
(actno,cname,bname,amount,adate)
values
(108,'kranti','nehru place',5000.00,'2-7-95');

--109
insert into deposit
(actno,cname,bname,amount,adate)
values
(109,'minu','powai',7000.00,'10-8-95');

--2
insert into deposit
(actno,cname,bname,amount,adate)
values
(2,'Raj','Royal',4000.36,'8-7-23');
--3
insert into deposit
(actno,cname,bname,amount,adate)
values
(3,'Neel','Roy',2300.36,'8-6-23');
--4
insert into deposit
(actno,cname,bname,amount,adate)
values
(4,'Veer','Ajni',54000.36,'8-5-23');
--5
insert into deposit
(actno,cname,bname,amount,adate)
values
(5,'Aman','Chandi',6000.36,'8-3-23');
--6
insert into deposit
(actno,cname,bname,amount,adate)
values
(6,'Raj','Vrce',700.36,'8-6-23');
--7
insert into deposit
(actno,cname,bname,amount,adate)
values
(7,'Amar','Rathod',10.36,'8-4-23');
--8
insert into deposit
(actno,cname,bname,amount,adate)
values
(8,'Akabar','Vora',999.36,'8-2-23');

--1st table elect Query :
select * from deposit;

-------------------------------------------------------------

-- 2nd table branch create :
create table branch
(bname varchar(50),
city varchar(50));

-- 2nd view  select branch :
select * from branch;

-- 2nd table in insert data :
insert into branch
values
('Royal','Rajkot');

-- 2nd view deposit select :
select * from branch;

--2.1 Insert Data :

--1
insert into branch
(bname,city)
values
('vrce','nagpur');

--2
insert into branch
(bname,city)
values
('ajni','nagpur');

--3
insert into branch
(bname,city)
values
('karolbagh','delhi');

--4
insert into branch
(bname,city)
values
('chandi','delhi');

--5
insert into branch
(bname,city)
values
('dharampeth','nagpur');

--6
insert into branch
(bname,city)
values
('m.g. road','banglore');

--7
insert into branch
(bname,city)
values
('andheri','bombay');

--8
insert into branch
(bname,city)
values
('virar','bombay');

--9
insert into branch
(bname,city)
values
('nehru place','delhi');

--10
insert into branch
(bname,city)
values
('powai','bombay');

--select * from brance;

-------------------------------------------------------------

-- 3rd table customers create :
create table customers
(cname varchar(50),
city varchar(50));

-- 3rd view  select customers :
select * from customers;

-- 3rd table in insert data :
insert into customers
values
('Manav','Rajkot');

-- 3rd view customers select :
select * from customers;

--3.1 insert data :
--1
insert into customers
(cname,city)
values
('anil','calcutta');
--2
insert into customers
(cname,city)
values
('sunil','delhi');
--3
insert into customers
(cname,city)
values
('mehul','baroda');
--4
insert into customers
(cname,city)
values
('mandar','patna');
--5
insert into customers
(cname,city)
values
('madhuri','nagpur');
--6
insert into customers
(cname,city)
values
('pramod','nagpur');
--7
insert into customers
(cname,city)
values
('sandip','surat');
--8
insert into customers
(cname,city)
values
('shivani','bombay');
--9
insert into customers
(cname,city)
values
('kranti','bombay');
--10
insert into customers
(cname,city)
values
('naren','bombay');

--3.2 select Query :
select * from customers;

-------------------------------------------------------------

-- 4th table borrow create :
create table borrow
(loanno int,
cname varchar(50),
bname varchar(50),
amount decimal(8,2));

-- 4th view  select borrow :
select * from borrow;

-- 4th table in insert data :
insert into borrow
values
(111,'Manav','Royal',10000.34);

-- 4th view borrow select :
select * from borrow;

-- 4.1 insert data :
--1
insert into borrow
(loanno,cname,bname,amount)
values
(201,'anil','vrce',1000.00);
--2
insert into borrow
(loanno,cname,bname,amount)
values
(206,'mehul','ajni',5000.00);
--3
insert into borrow
(loanno,cname,bname,amount)
values
(311,'sunil','dharampeth',3000.00);
--4
insert into borrow
(loanno,cname,bname,amount)
values
(321,'madhuri','andheri',2000.00);
--5
insert into borrow
(loanno,cname,bname,amount)
values
(375,'prmod','virar',8000.00);
--6
insert into borrow
(loanno,cname,bname,amount)
values
(481,'kranti','nehru place',3000.00);

--4.2 select Query :
select * from borrow;
-------------------------------------------------------------

1. retrieve all data from table deposit
2. retrieve all data from table borrow
3. retrieve all data from table customers
4. display account No, customer name & Amount from deposit
5. display loan n, amount from borrow
6. display loan details of all customers who belongs to 'andheri'