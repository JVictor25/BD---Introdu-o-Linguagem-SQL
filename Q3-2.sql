select DISTINCT students.sid
from students
join enrolls on students.sid = enrolls.students_sid
join courses on enrolls.courses_secno = courses.secno 
and enrolls.courses_term = courses.term
where courses.cno='csc226' and students.sid IN (
select students.sid
from students
join enrolls on students.sid = enrolls.students_sid
join courses on enrolls.courses_secno = courses.secno 
and enrolls.courses_term = courses.term
where courses.cno='csc227'
);
