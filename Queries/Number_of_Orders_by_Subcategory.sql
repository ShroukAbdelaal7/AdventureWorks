-- Number of Orders by Subcategory
SELECT COUNT(DISTINCT SOH.SalesOrderID) AS totalOrders,
    ProductSubcategory.Name AS ProductSubcategory
FROM sales.SalesOrderHeader AS SOH
    JOIN sales.SalesOrderDetail ON SOH.SalesOrderID = sales.SalesOrderDetail.SalesOrderID
    JOIN Production.[Product] ON sales.SalesOrderDetail.ProductID = Production.[Product].ProductID
    JOIN Production.ProductSubCategory ON Production.[Product].ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID
GROUP BY ProductSubcategory.Name;