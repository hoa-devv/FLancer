SELECT SalesPersonID, YEAR(OrderDate) AS OrderYear
FROM Sales.SalesOrderHeader
WHERE CustomerID = 30084
GROUP BY SalesPersonID, YEAR (OrderDate)
Having Count (*) > 1 
ORDER BY SalesPersonID, OrderYear;