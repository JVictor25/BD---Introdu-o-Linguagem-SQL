SELECT suppliers.sname
FROM suppliers
WHERE suppliers.sno IN (
    SELECT QualifiedProjectSupplies.suppliers_sno
    FROM (
        SELECT
            sppj.suppliers_sno,
            sppj.projects_pjno
        FROM sppj
        GROUP BY
            sppj.suppliers_sno,
            sppj.projects_pjno
        HAVING
            COUNT(DISTINCT sppj.parts_pno) >= 2
    ) AS QualifiedProjectSupplies
    GROUP BY
        QualifiedProjectSupplies.suppliers_sno
    HAVING
        COUNT(QualifiedProjectSupplies.projects_pjno) >= 2
);