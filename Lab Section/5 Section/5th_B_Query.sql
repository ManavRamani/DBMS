--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (select , alter, Drop, sp_rename) :
--------------------------------------------------------------------------------------------------------------------------

	-- Alredy Create Database bank_info....(deposit)

-- From the above given tables perform the following queries (ALTER Operation):

-- 1. Add two more columns City VARCHAR (20) and Pincode INT.
	alter table deposit
	add City VARCHAR(20),
	Pincode int;

-- 2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
	alter table deposit
	alter column cname varchar(35);

-- 3. Change the data type DECIMAL to INT in amount Column.
	alter table deposit
	alter column amount int;

-- 4. Rename Column ActNo to ANO.
	sp_rename 'deposit.actno', 'ANO';

-- 5. Delete Column City from the DEPOSIT table.
	alter table deposit
	drop column city;

-- 5.B deposit :-
-- 5.1 Select Query :
	select * from deposit;