select distinct courses.dept
from courses
join bookuses on bookuses.courses_cnum=courses.cnum
join books on bookuses.books_isbn=books.isbn
where books.publisher='Addison Wesley' 
and books.author='Navathe'
group by courses.dept
having count(distinct books.isbn)=(
select count(*)
from books
where books.publisher='Addison Wesley' 
and books.author='Navathe');