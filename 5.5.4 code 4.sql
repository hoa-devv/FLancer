SELECT SalesOrderID, CustomerID,SalesPersonID, TerritoryID,YEAR(ORDERDATE)
AS CurrentYear, YEAR(OrderDate) + 1 AS NextYear
FROM Sales, SalesOrderHeader