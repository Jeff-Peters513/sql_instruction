select * from customer;

-- What is the total credit limit of all rows
select sum(creditlimit) from customer;

-- What is the AVG credit limit of all rows
select avg(creditlimit) from customer;

select concat('$',format(avg(creditlimit), 2))
 from customer;
 
 -- report state, creditlimit, sum by state
 select  state, concat('$',format(sum(creditlimit),2)) as 'Total Credit Limit'
 	from customer
    group by state
    HAVING sum(creditLimit) > 500000
    order by state;
    
select * from customer;
-- count function
select count(*) from customer;
-- max function
select max(creditlimit) from customer;
-- min function
select min(creditlimit) from customer;



    