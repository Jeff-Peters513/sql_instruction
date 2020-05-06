 --  Drop and Create the Database, DDL

drop database if exists bmdb_db;
create database bmdb_db;
use bmdb_db;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key auto_increment,
	title 			varchar(100) 	not null unique,
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
	role			varchar(25)		not null,
    Foreign Key (ActorID) references Actor(ID),
	Foreign Key (MovieID) references Movie(ID),
	CONSTRAINT act_mov unique (ActorID, MovieID)
	);
    
  create table Genre (
	ID 				int 			not null primary key auto_increment,
	Name 		    varchar(20)		not null unique
	);
    
  create table MovieGenre (
	ID 				int 			not null primary key auto_increment,
	movieID		    int     		not null,
    genreID         int             not null,
    foreign key     (MovieID) references Movie(ID),
    foreign key     (GenreID) references Genre(ID),
    constraint  mov_gen unique (MovieID, GenreID)
    );  
    
-- DML Insert Movie Data

insert into movie (id, title, year, rating, director) 
	values (1, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont');
insert into movie (id, title, year, rating, director) 
	values (2, 'High Fidelity', 2000, 'R', 'Stephen Frears');
insert into movie (id, title, year, rating, director) 
	values (3, 'Margin Call', 2011, 'R', 'J. C. Chandor');

-- DDL Insert Actor Data

insert into Actor (id, firstName, lastName, gender, birthday) 
	values (1, 'Morgan', 'Freeman', 'Male', '1937-06-01');
insert into Actor (id, firstName, lastName, gender, birthday) 
	values (2, 'John', 'Cusack', 'Male', '1966-06-28'); 
insert into Actor (id, firstName, lastName, gender, birthday) 
	values (3, 'Jeremy', 'Irons', 'Male', '1948-09-19'); 
    
-- DML Insert Credit Data

insert into Credit (id, actorID, movieID, role)
	values (1, 1, 1, 'Ellis Boyd _Red_ Redding');
insert into Credit (id, actorID, movieID, role)
	values (2, 2, 2, 'Rob Gordon');
insert into Credit (id, actorID, movieID, role)
	values (3, 3, 3, 'John Tuld');
    
-- DML Insert Genre Data

insert into genre (id, name)
	values (1, 'Action');
insert into genre (id, name)
	values (2, 'Adventure');
insert into genre (id, name)
	values (3, 'Drama');
insert into genre (id, name)
	values (4, 'Thriller');
insert into genre (id, name)
	values (5, 'Rom-Com');
    
    
-- DML Insert Genre Data
insert into MovieGenre (id, movieID, genreID)
	values (1, 3, 4);
insert into MovieGenre (id, movieID, genreID)
	values (2, 1, 3);
insert into MovieGenre (id, movieID, genreID)
	values (3, 2, 5);