/* This is an update to the bmdb master create script.
   The purpose is to add genre and movie genre functionality. 
*/
USE bmdb;

-- create Genre table
Create table Genre (
ID 			integer 		primary key auto_increment,
Name 		varchar(10) 	not null unique
);

-- create MovieGenre table
Create table MovieGenre (
ID 			integer 		primary key auto_increment,
MovieID 	integer 		not null,
GenreID 	integer 		not null,
Foreign Key (MovieID) references Movie(ID),
Foreign Key (GenreID) references Genre(ID),
CONSTRAINT mov_gen unique (MovieID, GenreID)
);