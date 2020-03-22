SELECT * FROM sqlbootcamp_mod4.customer;

-- update customer ID 8 with name ABC Supplier
Update Customer
	set name = 'ABC Supplier' 
    where ID = 8;
    
-- delete a row(s) from the table
delete from Customer
		where id = 8;
        
delete from Customer
		where id >= 8;
        
-- insert 'Titan LLC' customer
Insert into 
Customer (name, city, state, iscorpacct, creditlimit, active) 
	Values ('Titan LLC', 'cincinnat', 'OH', 1, 1000000, 1);

-- insert 'Pluto LLC' customer
Insert into 
Customer (ID, name, city, state, iscorpacct, creditlimit, active) 
	Values (1000, 'Pluto LLC', 'cincinnat', 'OH', 1, 1000000, 1); 
    
-- FYI: CRUD = Create Read Update Delete


