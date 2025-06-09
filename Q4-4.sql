select projects.pjname
from projects
join sppj on projects.pjno=sppj.projects_pjno
where sppj.suppliers_sno='S1'
group by projects.pjno
having count(sppj.suppliers_sno)= 1;