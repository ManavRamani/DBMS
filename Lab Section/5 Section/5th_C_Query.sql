--------------------------------------------------------------------------------------------------------------------------
--													DBMS 
--										 (select , alter, Drop, sp_rename) :
--------------------------------------------------------------------------------------------------------------------------

	-- Alredy Create Database bank_info....(deposit)

-- Part C:

-- 1. Delete Column ADATE from the DEPOSIT table.
	alter table deposit
	drop column adate;

-- 2. Rename Column CNAME to CustomerName.
	sp_rename 'deposit.cname','CustomerName';

-- 3. Change name of table DEPOSIT to DEPOSIT_DETAIL.
	sp_rename 'deposit','DEPOSIT_DETAIL';
	select * from DEPOSIT_DETAIL;

-- 4. Remove the table DEPOSIT_DETAIL.
	drop table DEPOSIT_DETAIL;
	
-- 5.C : 
-- 5.1 : Select Query :
	select * from deposit;
