select suppliers.sname
from suppliers
join sppj on sppj.suppliers_sno=suppliers.sno
where sppj.projects_pjno='J1'
group by suppliers.sno
having count(sppj.projects_pjno)>2;