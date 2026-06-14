-- Number of Orders and Subtotal per Territory
SELECT COUNT(SalesOrderID) AS totalOrders,
    sales.SalesTerritory.Name,
    SUM(sales.SalesOrderHeader.SubTotal) AS total
FROM sales.SalesOrderHeader
    JOIN sales.SalesTerritory ON sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID
GROUP BY sales.SalesTerritory.Name;