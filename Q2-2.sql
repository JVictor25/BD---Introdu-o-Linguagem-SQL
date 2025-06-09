SELECT DISTINCT e.ename, z.city
FROM employees e
JOIN zipcodes z ON e.zip = z.zip
JOIN orders o ON e.eno = o.eno
WHERE o.ono IN (
    SELECT od.ono
    FROM odetails od
    JOIN parts p ON od.pno = p.pno
    GROUP BY od.ono
    HAVING SUM(p.price * od.qty) > 50
);