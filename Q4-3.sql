select parts.pname
from parts
join sppj on parts.pno=sppj.parts_pno
group by parts.pno
having count(distinct sppj.suppliers_sno)=(
select count(*) from suppliers);