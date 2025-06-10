select distinct students.name
from students
join enrolls on students.ssn=enrolls.students_ssn
join courses on enrolls.courses_cnum=courses.cnum
join bookuses on courses.cnum=bookuses.courses_cnum
join books on bookuses.books_isbn=books.isbn
where enrolls.courses_cnum not in (
select distinct  courses.cnum
from courses
join bookuses on courses.cnum=bookuses.courses_cnum
join books on bookuses.books_isbn=books.isbn
where books.publisher='Addison Wesley' and
books.author='Navathe');