SELECT E.fname, E.lname
FROM EMPLOYEE AS E
JOIN WORKS_ON AS W ON E.ssn = W.essn
JOIN PROJECT AS P ON W.pno = P.pnumber
WHERE E.dno = 5
  AND P.pname = 'ProductX'
  AND W.hours > 10;