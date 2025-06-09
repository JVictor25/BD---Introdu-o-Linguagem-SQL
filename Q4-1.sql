select parts.pname
from parts
join sppj on sppj.parts_pno=parts.pno
group by parts.pno
having count(distinct sppj.projects_pjno)=2;