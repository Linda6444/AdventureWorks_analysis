
SELECT
    st.Name AS Region,
    SUM(soh.TotalDue) AS Totalsales,
    COUNT(DISTINCT soh.CustomerID) AS CustomerCount
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
INNER JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
GROUP BY st.Name
ORDER BY Totalsales DESC;
