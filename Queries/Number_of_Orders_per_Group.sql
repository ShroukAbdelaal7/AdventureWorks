-- Number of Orders per Group
SELECT COUNT(SalesOrderID) AS totalOrders,
    sales.SalesTerritory.[Group]
FROM sales.SalesOrderHeader
    JOIN sales.SalesTerritory ON sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID
GROUP BY sales.SalesTerritory.[Group];