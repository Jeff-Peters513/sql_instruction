-- insert one row, inc. id
insert into customer 
	(id, name, city, state, isCorpAcct, creditlimit, active)
values
(8, 'test1', 'Cinci', 'OH', 0, 1000000, 1);

-- insert one row, no id
insert into customer 
	(name, city, state, isCorpAcct, creditlimit, active)
values
('test2', 'Cinci', 'OH', 0, 1000000, 1);

-- inser multiple rows
insert into customer
 Values
 (10, 'test3', 'Cinci', 'OH', 0, 1000000, 1),
 (11, 'test4', 'Cinci', 'OH', 0, 1000000, 1),
 (12, 'test5', 'Cinci', 'OH', 0, 1000000, 1);