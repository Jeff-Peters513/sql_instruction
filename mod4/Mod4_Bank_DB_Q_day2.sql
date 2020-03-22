select * from account;

select * from transaction;

select * from account
	order by AccountHolder desc;
    
select * from transaction
	order by amount;
 -- my try   
 SELECT accountholder, birthdate, balance, fees
	FROM account as a
	Join transaction as t
		on a.id = account.customerID;   
    
  -- sean's code  
  SELECT a.id, AccountHolder, amount, TxnType 
	FROM transaction as t
	Join account as a
		on t.accountID = a.ID;   
    
