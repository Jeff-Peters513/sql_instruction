SELECT * FROM transaction;

SELECT avg(amount) FROM transaction;

-- subquery example
select *
	from transaction
    where amount > (SELECT avg(amount) FROM transaction);
    
-- use of distinct
Select distinct(accountID) from transaction;

Select distinct(txntype) from transaction;

select * from account
	where id in (2,3,4);
    
