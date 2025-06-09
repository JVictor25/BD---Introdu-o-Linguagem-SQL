select DISTINCT students.fname, students.minit, students.lname
from students
left join enrolls on students.sid = enrolls.students_sid
where enrolls.students_sid is null;