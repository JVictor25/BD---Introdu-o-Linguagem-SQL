SELECT DISTINCT E.fname, E.minit, E.lname
FROM EMPLOYEE AS E
JOIN WORKS_ON AS W ON E.ssn = W.essn
JOIN PROJECT AS P ON P.pnumber = W.pno
WHERE
    P.plocation = 'Houston'
    AND E.dno NOT IN (
        SELECT DL.dnumber
        FROM DEPT_LOCATIONS AS DL
        WHERE DL.dlocation = 'Houston'
    );