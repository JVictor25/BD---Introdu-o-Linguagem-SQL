select students.fname, students.minit, students.lname
from students
join enrolls on students.sid = enrolls.students_sid
join courses on enrolls.courses_secno = courses.secno 
and enrolls.courses_term = courses.term
join catalogue on courses.cno = catalogue.cno
where	courses.term='f96' and catalogue.ctitle='Automata';