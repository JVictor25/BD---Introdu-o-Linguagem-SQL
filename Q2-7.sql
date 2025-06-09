SELECT customers.cname
FROM customers
JOIN orders on customers.cno = orders.cno
group by customers.cname, customers.cno
HAVING COUNT(DISTINCT orders.ono) = 2;