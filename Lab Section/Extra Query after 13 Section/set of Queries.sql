
PRODUCTS:

product_id	product_name
	1		Processor
	2		DiskCU
	3		Computer
	4		CPU
	5		Mouse
	6		Keyboard

-- Create Table PRODUCTS :
Create table PRODUCTS(
product_id int,
product_name varchar(20));

-- Insert Query :

-- insert data : 
-- 1
insert into  PRODUCTS
(product_id,product_name)
values
(1,'Processor');
-- 2
insert into  PRODUCTS
(product_id,product_name)
values
(2,'DiskCU');
-- 3
insert into  PRODUCTS
(product_id,product_name)
values
(3,'Computer');
-- 4
insert into  PRODUCTS
(product_id,product_name)
values
(4,'CPU');
-- 5
insert into  PRODUCTS
(product_id,product_name)
values
(5,'Mouse');
-- 6
insert into  PRODUCTS
(product_id,product_name)
values
(6,'Keyboard');

select * from products;


ORDERS:
				
order_id	order_date	customer_id	product_id	quantity
1			01-08-2023	101			1			5
2			03-08-2023	102			2			3
3			05-08-2023	101			3			12
4			10-08-2023	103			2			1
5			15-08-2023	102			4			4

-- Create Table ORDERS :
Create table ORDERS(
order_id int,
order_date date,
customer_id int,
product_id int,
quantity int);

-- Insert Query :

-- insert data : 
-- 1
insert into  ORDERS
(order_id,order_date,customer_id,product_id,quantity)
values
(1,'01-aug-2023',101,1,5);
-- 2
insert into  ORDERS
(order_id,order_date,customer_id,product_id,quantity)
values
(2,'03-aug-2023',102,2,3);
-- 3
insert into  ORDERS
(order_id,order_date,customer_id,product_id,quantity)
values
(3,'05-aug-2023',101,3,12);
-- 4
insert into  ORDERS
(order_id,order_date,customer_id,product_id,quantity)
values
(4,'10-aug-2023',103,2,1);
-- 5
insert into  ORDERS
(order_id,order_date,customer_id,product_id,quantity)
values
(5,'15-aug-2023',102,4,4);

select * from ORDERS;




CUSTOMERS:	
			
customer_id	customer_name		email			city
101			Alice			alice@example.com	New York
102			Bob				bob@example.com		Los Angeles
103			Carol			carol@example.com	Chicago
104			David			david@example.com	San Francisco

-- Create Table CUSTOMERS :
Create table CUSTOMERS(
customer_id int,
customer_name varchar(20),
email varchar(30),
city varchar(25));

-- Insert Query :

-- insert data : 
-- 1
insert into  CUSTOMERS
(customer_id,customer_name,email,city)
values
(101,'Alice','alice@example.com','New York');
-- 2
insert into  CUSTOMERS
(customer_id,customer_name,email,city)
values
(102,'Bob','bob@example.com','Los Angeles');
-- 3
insert into  CUSTOMERS
(customer_id,customer_name,email,city)
values
(103,'Carol','carol@example.com','Chicago');
-- 4
insert into  CUSTOMERS
(customer_id,customer_name,email,city)
values
(104,'David','david@example.com','San Francisco');

select * from CUSTOMERS;


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
							-- Extra Query :---- JOINS 
------------------------------------------------------------------------------------------------------

-- 1. List all orders with customer names:					
	select c.customer_name,o.* from orders o
	inner join customers c
	on o.customer_id=c.customer_id;

-- 2. Calculate the total quantity of each product ordered display the name and total quantity:					
	select p.product_name,sum(o.quantity) as qty_order 
	from products p inner join orders o
	on p.product_id=o.product_id
	group by(product_name)

-- 3. Find customers who ordered product 2:					
	select c.customer_name from orders o
	inner join customers c
	on o.customer_id=c.customer_id
	where o.product_id=2;

-- 4. List all orders placed in August 2023:					
	select * from orders
	where datename(month,order_date)='August' and datepart(year,order_date)=2023

-- 5. Calculate the total quantity of orders for each customer:					
	select c.customer_name,sum(o.quantity) as qty_order 
	from CUSTOMERS c inner join orders o
	on c.customer_id=o.customer_id
	group by c.customer_name,c.customer_id

-- 6. Find customers who placed orders for more than 10 products in total:					
	select c.customer_name,sum(o.quantity) as total from orders o
	inner join customers c 
	on c.customer_id=o.customer_id
	group by c.customer_name,c.customer_id
	having sum(o.quantity)>10

-- 7. List orders and include customer email addresses:					
	select o.*,c.email from orders o
	left join customers c
	on o.customer_id=c.customer_id

-- 8. Calculate the total quantity ordered for each product by customers in New York:					
	select p.product_name,c.customer_name,sum(o.quantity) as total_qty from products p
	inner join orders o 
	on p.product_id=o.product_id
	inner join customers c
	on o.customer_id=c.customer_id
	where c.city='New York'
	group by p.product_name,c.customer_name

-- 9. Find orders placed by customers in Los Angeles in August 2023:					


-- 10. Calculate the total quantity of each product ordered by customers in Chicago:					


-- 11. Find customers who ordered product 3 in August 2023:					


-- 12. Calculate the total quantity ordered by customers in San Francisco:					


-- 13. List all orders placed in August 2023 by customers named Alice:					


-- 14. Calculate the total quantity ordered for each product by customers in Los Angeles:					


-- 15. Find customers who placed orders for more than 15 products in total in August 2023:					


-- 16. List orders and include customer cities:					


-- 17. Calculate the total quantity ordered for each product by customers in New York in August 2023:					


-- 18. Find orders placed by customers in Chicago in August 2023:					


-- 19. Calculate the total quantity of product 1 ordered by customers in San Francisco:					


-- 20. List all orders placed in August 2023 by customers named Bob:					

