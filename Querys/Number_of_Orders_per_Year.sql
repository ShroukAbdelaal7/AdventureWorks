-- Number of Orders per Year
SELECT COUNT(SalesOrderID) AS totalOrders,
    YEAR(OrderDate) AS [year]
FROM sales.SalesOrderHeader
GROUP BY YEAR(OrderDate);