-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------


-- 1. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount 
-- sum 17541.18
select SUM(purch_amt) AS 'sum' from ORDER1;
-- 2. From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.
--  avg 1461.7650000000000000
select AVG(purch_amt) AS 'avg' from ORDER1;
-- 3. From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople.
-- count 6
select count(salesman_id) AS 'count' from SALESMAN;
-- 4. From the following table, write a SQL query to count the number of customers. Return number of customers
-- count
-- 8
select count(customer_id) AS 'count' from CUSTOMER;
-- 5. From the following table, write a SQL query to determine the number of customers who received at least one grade for their activity.
-- count
-- 7
select count(customer_id) AS 'count' from CUSTOMER
where grade >=1;
-- 6. From the following table, write a SQL query to find the maximum purchase amount. 
-- max
-- 5760.00
select MAX(purch_amt) AS 'max' from ORDER1;
-- 7. From the following table, write a SQL query to find the minimum purchase amount.
-- min
-- 65.26
select MIN(purch_amt) AS 'max' from ORDER1;
-- 8. From the following table, write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade.
-- city		max
-- London		300
-- Paris		300
-- New York	   	200
-- California	       200
-- Berlin		100
-- Moscow		200
select city, MAX(grade) AS 'max' from CUSTOMER
group by(city)
order by MAX(grade) desc;
-- 9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount.
-- customer_id	max
-- 3007		2400.60
-- 3008		250.45
-- 3002		5760.00
-- 3001		270.65
-- 3009		2480.40
-- 3004		1983.43
-- 3003		75.29
-- 3005		948.5
select customer_id, MAX(purch_amt) AS 'max' from ORDER1
group by(customer_id);
-- 10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
--   Return, order date and highest purchase amount.
-- customer_id	ord_date	max
-- 3002		2012-10-05	65.26
-- 3003		2012-08-17	75.29
-- 3005		2012-10-05	150.50
-- 3007		2012-07-27	2400.60
-- 3009		2012-08-17	110.50
-- 3001		2012-09-10	270.65
-- 3002		2012-09-10	5760.00
-- 3005		2012-09-10	948.50
-- 3009		2012-10-10	2480.40
-- 3008		2012-06-27	250.45
-- 3004		2012-10-10	1983.43
-- 3002		2012-04-25	3045.60
select ord_date, MAX(purch_amt) AS 'max' from ORDER1
group by(ord_date)
order by ord_date, MAX(purch_amt);
--   11. From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. 
-- 		Return salesperson ID, purchase amount 
-- salesman_id	max
-- 5003		110.50
-- 5007		75.29

-- 12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.
-- customer_id	ord_date	max
-- 3007		2012-07-27	2400.60
-- 3002		2012-09-10	5760.00
-- 3009		2012-10-10	2480.40
-- 3002		2012-04-25	3045.60

-- 13. From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount
-- customer_id	ord_date	max
-- 3007		2012-07-27	2400.60
-- 3002		2012-09-10	5760.00
-- 3009		2012-10-10	2480.40
-- 3002		2012-04-25	3045.60

-- 14. From the following table, write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. Return customer id, order date and maximum purchase amount.
-- customer_id	ord_date	max
-- 3002		2012-09-10	5760.00

-- 15. From the following table, write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount.
-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43
-- 3003		75.29
-- 3005		948.50

-- 16. From the following table, write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.
-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43

-- 17. From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). Return salesperson id and maximum purchase amount.
-- salesman_id	max
-- 5005		270.65
-- 5003		2480.40
-- 5007		75.29
-- 5006		1983.43

-- 18. From the following table, write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders
-- count
-- 2

-- 19. From the following table, write a SQL query to count the number of salespeople in a city. Return number of salespeople.
-- count
-- 6

-- 20. From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson. Return order date, salesperson id
-- ord_date	salesman_id	count
-- 2012-07-27	5001		1
-- 2012-08-17	5007		1
-- 2012-04-25	5001		1
-- 2012-09-10	5002		1
-- 2012-10-05	5002		1
-- 2012-10-10	5003		1
-- 2012-09-10	5005		1
-- 2012-08-17	5003		1
-- 2012-06-27	5002		1
-- 2012-09-10	5001		1
-- 2012-10-05	5001		1
-- 2012-10-10	5006		1

-- 21. From the following table, write a SQL query to calculate the average product price. Return average product price.
-- Average Price
-- 1435.0000000000000000

-- 22. From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products.
-- Number of Products
-- 8

-- 23. From the following table, write a SQL query to compute the average price for unique companies. Return average price and company id.
-- Average Price			Company ID
-- 250.0000000000000000		14
-- 650.0000000000000000		12
-- 3200.0000000000000000		15
-- 5000.0000000000000000		11
-- 1475.0000000000000000		13
-- 500.0000000000000000		16
