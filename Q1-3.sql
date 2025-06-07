SELECT E.fname,E.minit, E.lname
FROM EMPLOYEE AS E
JOIN employee AS s ON E.super_ssn = s.ssn
WHERE s.fname = 'Franklin' and
s.lname = 'Wong';