SELECT DISTINCT C1.cno, C2.cno
FROM customers as C1
JOIN customers as C2 ON ((C1.zip = C2.zip) and (C1.cno <> C2.cno));