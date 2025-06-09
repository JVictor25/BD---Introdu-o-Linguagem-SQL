SELECT customers.cname
FROM customers
LEFT JOIN orders on customers.cno = orders.cno
WHERE orders.ono is null;