
-- 1. Display Total No of student 
-- 2. Display Branch Wise Student Total
-- 3. Display Branch wise Maximum SPI
-- 4. Display Name whose SPI is greater than 7
-- 5. Count the Student whose SPI is lessthan 5 and belong to CE Branch
-- 6. Count the Student whose backlog is greater than 3
-- 7. retrive the all student information
-- 8. Display branch wise student count 
-- 9. Count the total Branch in student table. Give the Label 'Total Branch'
-- 10. Display Total branch, Total Student
-- 11. Display Maximum SPI, Minimum SPI with Proper Label
-- 12. Display Average SPI 
-- 13. Display Branch wise Average SPI 
-- 14. Display Student Detail whose name Starts with M and Belonging to CE Branch
-- 15. Display Student Name, Student Branch, Student SPI from STUDENT TAble
-- 16. Display all the detail of student whose Roll no is less than 4
-- 17. Update the SPI to 2.65 whose name is Amit
-- 18. Display all the Student Whose Name starts with M and last second character is S
-- 19. Display Average SPI, Maximum SPI, Minimum SPI
 

-------------------------------------------------------------------------------------------------------
		
ORDER1
ord_no      purch_amt   ord_date    customer_id  salesman_id
----------      ----------       ----------          -----------             -----------
70001       150.5       2012-10-05        3005         5002
70009       270.65      2012-09-10       3001         5005
70002       65.26       2012-10-05        3002         5001
70004       110.5       2012-08- 17       3009         5003
70007       948.5       2012-09-10        3005         5002
70005       2400.6      2012-07-27       3007         5001
70008       5760        2012-09-10        3002         5001
70010       1983.43     2012-10-10     3004         5006
70003       2480.4      2012-10-10      3009         5003
70012       250.45      2012-06-27      3008         5002
70011       75.29       2012-08-17       3003         5007
70013       3045.6      2012-04-25      3002         5001

-- 1st Create table Order1 :
create table ORDER1
(ord_no int,
purch_amt decimal(8,2),
ord_date date,
customer_id int,
salesman_id int);

-- 2nd Insert Data into Order1 :
-- 1
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70001,150.5,'2012-10-05',3005,5002);
-- 2
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70009,270.65,'2012-09-10',3001,5005);
-- 3
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70002,65.26,'2012-10-05',3002,5001);
-- 4
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70004,110.5,'2012-08- 17',3009,5003);
-- 5
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70007,948.5,'2012-09-10',3005,5002);
-- 6
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70008,5760,'2012-09-10',3002,5001);
-- 7
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70010,1983.43,'2012-10-10',3004,5006);
-- 8
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70003,2480.4,'2012-10-10',3009,5003);
-- 9
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70012,250.45,'2012-06-27',3008,5002);
-- 10
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70011,75.29,'2012-08-17',3003,5007);
-- 11
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70013,3045.6,'2012-04-25',3002,5001);
-- 12
insert into ORDER1
(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values
(70005,2400.6,'2012-07-27',3007,5001);

-- 3rd Display Data :of Order1
select * from ORDER1;

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

CUSTOMER
 customer_id |   cust_name     |    city        | grade   | salesman_id 
------------------+--------------------+-------------+-----------+-----------------|
        3002       | Nick Rimando     | New York   |   100 |        5001
        3007       | Brad Davis           | New York   |   200 |        5001
        3005       | Graham Zusi       | California   |   200 |        5002
        3008       | Julian Green       | London       |   300 |        5002
        3004       | Fabian Johnson | Paris            |   300 |        5006
        3009       | Geoff Cameron | Berlin          |   100 |        5003
        3003       | Jozy Altidor       | Moscow      |   200 |        5007
        3001        | Brad Guzan      | London       |           |        5005


-- 1st Create table CUSTOMER :
create table CUSTOMER
(customer_id int,
cust_name varchar(50),
city varchar(50),
grade int,
salesman_id int);

-- 2nd Insert Data into CUSTOMER :
-- 1
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3002,'Nick Rimando','New York',100,5001);
-- 2
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3007,'Brad Davis','New York',200,5001);
-- 3
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3005,'Graham Zusi','California',200,5002);
-- 4
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3008,'Julian Green','London',300,5002);
-- 5
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3004,'Fabian Johnson','Paris',300,5006);
-- 6
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3009,'Geoff Cameron','Berlin',100,5003);
-- 7
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3003,'Jozy Altidor','Moscow',200,5007);
-- 8
insert into CUSTOMER
(customer_id,cust_name,city,grade,salesman_id)
values
(3001,'Brad Guzan','London',NULL,5005);

-- 3rd Display Data :of CUSTOMER
select * from CUSTOMER;


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SALESMAN
salesman_id |    name          |   city           | commission 
-----------------+------------------+---------------+------------
        5001      | James Hoog | New York    |       0.15
        5002      | Nail Knite     | Paris            |       0.13
        5005     | Pit Alex          | London       |       0.11
        5006     | Mc Lyon        | Paris            |       0.14
        5007    | Paul Adam    | Rome          |       0.13
        5003   | Lauson Hen   | San Jose     |       0.12

-- 1st Create table CUSTOMER :
create table SALESMAN
(salesman_id int,
name varchar(50),
city varchar(50),
commission decimal(3,2));

-- 2nd Insert Data into SALESMAN :
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5001,'James Hoog','New York',0.15);
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5002,'Nail Knite','Paris',0.13);
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5005,'Pit Alex','London',0.11);
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5006,'Mc Lyon','Paris',0.14);
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5007,'Paul Adam','Rome',0.13);
-- 1
insert into SALESMAN
(salesman_id,name,city,commission)
values
(5003,'Lauson Hen','San Jose',0.12);

-- 3rd Display Data :of SALESMAN
select * from SALESMAN;


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

item
	PRO_ID        		PRO_NAME                       PRO_PRICE    	PRO_COM
-------           -------------------------      --------------     ----------
    101         	Mother Board                    3200.00                	15
    102 	     	Key Board                     	450.00         			16
    103          	ZIP drive                     	 250.00           		14
    104          	Speaker                       	 550.00            		16
    105          	Monitor                       	 5000.00         		11
    106          	DVD drive                     	 900.00         			12
    107         	CD drive                        800.00         			12
    108         	Printer                         2600.00         		13
    109         	Refill cartridge                350.00         			13
    110         	Mouse                           250.00         			12

-- 1st Create table item1 :
create table item1
(PRO_ID int,
PRO_NAME varchar(50),
PRO_PRICE decimal(8,2),
PRO_COM int);

-- 2nd Insert Data into item1 :
-- 1
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(101,'Mother Board',3200.00,15);
-- 2
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(102,'Key Board',450.00,16);
-- 3
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(103,'ZIP drive',250.00,14);
-- 4
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(104,'Speaker',550.00,16);
-- 5
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(105,'Monitor',5000.00,11);
-- 6
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(106,'DVD drive',900.00,12);
-- 7
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(107,'CD drive',800.00,12);
-- 8
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(108,'Printer',2600.00,13);
-- 9
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(109,'Refill cartridge',350.00,13);
-- 10
insert into item1
(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
values
(110,'Mouse',250.00,12);


-- 3rd Display Data :of item1
select * from item1;


