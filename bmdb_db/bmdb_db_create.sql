 --  Drop and Create the Database, DDL

drop database if exists bmdb_db;
create database bmdb_db;
use bmdb_db;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key auto_increment,
	title 			varchar(100) 	not null,
	year			int			 	not null,
	rating		 	varchar(5), 		
	director		varchar(50) 	not null
	);

create table actor (
	id 				int 			not null primary key auto_increment,
	firstName 		varchar(25) 	not null,
	lastName 		varchar(25) 	not null,
    gender 			varchar(6)		not null,
	birthday 		Date 			not null
	);


create table credit (
	id 				int 			not null primary key auto_increment,
	actorID			int 			not null,
	movieID			int 			not null,
	role			varchar(25)		not null
	);
    
-- DML Insert Movie Data

insert into movie (id, title, year, rating, director) 
	values (1, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont');
insert into movie (id, title, year, rating, director) 
	values (2, 'High Fidelity', 2000, 'R', 'Stephen Frears');

-- DDL Insert Actor Data

insert into Actor (id, firstName, lastName, gender, birthday) 
	values (1, 'Morgan', 'Freeman', 'Male', '1937-06-01');
insert into Actor (id, firstName, lastName, gender, birthday) 
	values (2, 'John', 'Cusack', 'Male', '1966-06-28'); 
    
-- DML Insert Credit Data

insert into Credit (id, actorID, movieID, role)
	values (1, 1, 1, 'Ellis Boyd _Red_ Redding');
insert into Credit (id, actorID, movieID, role)
	values (2, 2, 2, 'Rob Gordon');
    


