SELECT * FROM customer;
select * from customer 
	where state = 'oh'
	and creditLimit <= 500000;
select * from customer where state = 'OH' order by name desc;
select * from customer where state = 'ky';
select * from customer where state  in ('OH', 'IN');
select name, city, state, isCorpAcct as 'Corp?'
	from customer;


    
