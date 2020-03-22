SELECT * FROM enrolled;

select ID, studentID, grade
	from enrolled;
    
Select studentID, grade from enrolled;

select * from enrolled where studentID = 5;
 
Select * from enrolled
		order by studentID;
select * from student 
	where ID = 4;
-- student 4 is Aeriela 

Select * from course
	where id in (1002, 1007, 1005);
--     
-- student to enroll join table
select firstName, lastName, courseID, grade 
from student as s
join enrolled as e
    on e.studentID = s.id;
    
-- 2 tabel course and enrolled
select subject, name, credits, quarter, e.studentID, e.grade 
from course c
join enrolled e
	on c.id = e.courseID;
    
  -- 3 table join - show student and their enrolled courses
  select firstName, lastName, subject, name, grade
	from student as s
    join enrolled as e
		on e.studentID = s.id
	join course as c
		on c.id = e.courseID;