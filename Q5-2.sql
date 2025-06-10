select courses.cname
from courses
join bookuses on bookuses.courses_cnum=courses.cnum
group by courses.cnum
having count(distinct bookuses.books_isbn)>1;