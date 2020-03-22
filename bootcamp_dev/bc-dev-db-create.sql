-- create the database schema
drop database if exists bc_dev_db;
create database bc_dev_db;
use bc_dev_db;

-- create the developer table
create table Developer (
	id 				int 			not null primary key auto_increment,
	last_name 		varchar(50) 	not null,
	first_name 		varchar(50) 	not null,
	role 			varchar(50) 	not null,
	salary 			int 			not null default 0
 );

-- 
Insert into Developer (id, last_name, first_name, role, salary)
values ('1122', 'Ivannikov', 'Alina', 'Developer 2', 67750);
Insert into Developer (id, last_name, first_name, role, salary)
values ('1055', 'Wansik', 'Andrew', 'Developer 1', 59000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('2222', 'Hall', 'Christian', 'Developer 4', 95000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('8544', 'Frey', 'Dennis', 'Developer 3', 75000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('6789', 'Shepard', 'Eric', 'Developer 2', 65200);
Insert into Developer (id, last_name, first_name, role, salary)
values ('3222', 'Pineault', 'Jacob', 'Developer 1', 58500);
Insert into Developer (id, last_name, first_name, role, salary)
values ('4512', 'Peters', 'Jeff', 'Developer 1', 62000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('9632', 'Crabtree', 'Marcus', 'Developer 3', 82000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('1254', 'Renner', 'Nick', 'Developer 2', 68000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('2498', 'O_Connell', 'Sam', 'Developer 4', 107500);
Insert into Developer (id, last_name, first_name, role, salary)
values ('5522', 'Williamson', 'Sarah', 'Developer 5', 125000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('6352', 'Osborne', 'Trevor', 'Developer 3', 83500);
Insert into Developer (id, last_name, first_name, role, salary)
values ('8574', 'Stegman', 'Tyler', 'Developer 2', 65000);
Insert into Developer (id, last_name, first_name, role, salary)
values ('1111', 'Blessing', 'Sean', 'Manager 2', 120000);

