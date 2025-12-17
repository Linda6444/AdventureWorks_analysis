
SELECT * FROM Sales.SalesOrderHeader;

SELECT 
    CAST(YEAR(OrderDate) AS VARCHAR(4)) + '-' + RIGHT('0' + CAST(MONTH(OrderDate) AS VARCHAR(2)), 2) AS YearMonth,
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);
