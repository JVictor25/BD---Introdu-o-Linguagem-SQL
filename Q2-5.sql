SELECT customers.cname
FROM customers
JOIN orders on customers.cno = orders.cno
JOIN odetails on orders.ono = odetails.ono
JOIN parts on odetails.pno = parts.pno
WHERE parts.price<20 
group by customers.cno, customers.cname
HAVING COUNT(DISTINCT parts.pno) = (
    SELECT COUNT(*) FROM parts WHERE price < 20.00
);