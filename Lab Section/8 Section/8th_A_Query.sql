--------------------------------------------------------------------------------------------------------------------------
--												DBMS 
--								
--------------------------------------------------------------------------------------------------------------------------


-- 8. Part A :

-- 
-- ----- String Function :
-- 

-- 1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select len(NULL);
select len('HELLO');
select len('');

-- 2. Display your name in lower & upper case.
select upper('Manav');
select lower('Manav');

-- 3. Display first three characters of your name.
select substring('Manav',1,3);

-- 4. Display 3rd to 10th character of your name.
select substring('hello im Manav',3,10);

-- 5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select replace('abc123efg',123,'XYZ');
select replace('abcXYZefg','XYZefg','abcabc');
select replace('abcabcabc','c',5);

-- 6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ascii('a');
select ascii('A');
select ascii('z');
select ascii('Z');
select ascii(0);
select ascii(9);

-- 7. Write a query to display character based on number 97, 65,122,90,48,57.
select char(97);
select char(65);
select char(122);
select char(90);
select char(48);
select char(57);

-- 8. Write a query to remove spaces from left of a given string ‘ hello world ‘.
select ltrim(' hello world ');

-- 9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim(' hello world ');

-- 10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select left('SQL Server',4);
select right('SQL Server',5);

-- 11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select cast('1234.56' as float);
select convert(float,'1234.56');

-- 12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select cast(10.58 as int);
select convert(int,10.58);

-- 13. Put 10 space before your name using function.
select space(10)+('Manav');

-- 14. Combine two strings using + sign as well as CONCAT ().
select 'Manav' + ' Ramani';
select concat('Manav',' Ramani');

-- 15. Find reverse of “Darshan”.
select reverse('Darshan');

-- 16. Repeat your name 3 times.
select replicate('Manav',3);

