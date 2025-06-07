SELECT E.fname,E.minit, E.lname
FROM EMPLOYEE AS E
JOIN dependent AS d ON E.ssn = d.essn
WHERE E.fname = d.dependent_name;