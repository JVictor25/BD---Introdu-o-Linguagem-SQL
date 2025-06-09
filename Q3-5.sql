select DISTINCT students.fname, students.minit, students.lname
from students
join enrolls on students.sid = enrolls.students_sid
join courses on enrolls.courses_secno = courses.secno 
and enrolls.courses_term = courses.term
join catalogue on courses.cno = catalogue.cno
group by students.fname, students.minit, students.lname
having count(distinct catalogue.cno)=
(select count(*) from catalogue);