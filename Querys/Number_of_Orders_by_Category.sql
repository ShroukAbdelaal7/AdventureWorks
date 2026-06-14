-- Number of Orders by Category
SELECT COUNT(DISTINCT SOH.SalesOrderID) AS totalOrders,
    Production.ProductCategory.Name AS ProductCategory
FROM sales.SalesOrderHeader AS SOH
    JOIN sales.SalesOrderDetail ON SOH.SalesOrderID = sales.SalesOrderDetail.SalesOrderID
    JOIN Production.[Product] ON sales.SalesOrderDetail.ProductID = Production.[Product].ProductID
    JOIN Production.ProductSubCategory ON Production.[Product].ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID
    JOIN Production.ProductCategory ON Production.ProductSubcategory.ProductCategoryID = Production.ProductCategory.ProductCategoryID
GROUP BY Production.ProductCategory.Name;