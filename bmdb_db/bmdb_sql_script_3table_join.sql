SELECT * FROM bmdb_db.movie;

SELECT  year from movie;

  -- 3 table join - showing all
  select *
	from actor as a
    join credit as c
		on c.actorID = a.id
	join movie as m
		on m.id = c.actorID;
        
  -- 3 table join - show selected columns
  select firstName, lastName, role, title, year, rating, gender, birthday, director
	from actor as a
    join credit as c
		on c.actorID = a.id
	join movie as m
		on m.id = c.actorID;
        
-- swithing up join on id loctions to see functionality        
select firstName, lastName, role, title, year, rating, gender, birthday, director
	from actor as a
    join credit as c
		on a.id =  c.actorID
	join movie as m
		on c.actorID = m.id;
        
 -- this is a single line comment
 /* this is a block comment
 and will continue until I stop it..
 
 */
 
 /* -- query all credits, showing movie name, year, actor name and role*/
 
 select Title, Year, Role, concat(FirstName, " ", lastName) as Actor
	from movie
    join credit
		on movieID = credit.movieID
	join actor
		on actor.id = credit.actorID;
        
-- left join Movie - Credit
Select Title, Year, Role
   From movie
   left join credit
    on movie.id = credit.movieID;
        
        
 
        