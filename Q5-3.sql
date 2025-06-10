select distinct courses.dept
from courses
join bookuses on bookuses.courses_cnum=courses.cnum
join books on bookuses.books_isbn=books.isbn
where books.publisher='Addison Wesley' and 
courses.dept in (
select courses.dept
from courses
join bookuses on bookuses.courses_cnum=courses.cnum
join books on bookuses.books_isbn=books.isbn
group by courses.dept
having count(distinct books.publisher)=1);