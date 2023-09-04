--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 7. Part A :

-- 
-- ----- Math. Function :
-- 

-- 1. Display the result of 5 multiply by 30.
select 5*30;

-- 2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25);
select abs(-50);

-- 3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select floor(25.2);
select floor(25.7);
select floor(-25.2);

-- 4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select ceiling(25.2);
select ceiling(25.7);
select ceiling(-25.2);


-- 5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2;
select 5%3;


-- 6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2);
select power(4,3);


-- 7. Find out the square root of 25, 30 and 50.
select sqrt(25);
select sqrt(30);
select sqrt(50);


-- 8. Find out the square of 5, 15, and 25.
select square(5);
select square(15);
select square(25);


-- 9. Find out the value of PI.
select pi();


-- 10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2);
select round(0,-2);


-- 11. Find out exponential value of 2 and 3.
select exp(2);
select exp(3);


-- 12. Find out logarithm having base e of 10 and 2.
select log(10);
select log(2);


-- 13. Find out logarithm having base b having value 10 of 5 and 100.
select log10(5);
select log10(100);


-- 14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415);
select cos(3.1415);
select tan(3.1415);

-- 15. Find sign of -25, 0 and 25.
select sign(-25);
select sign(0);
select sign(25);


-- 16. Generate random number using function.
select rand();

