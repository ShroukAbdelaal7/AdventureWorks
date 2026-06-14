-- Total Due, Freight, Tax Amount, and Subtotal
SELECT SUM(TotalDue) AS TotalDue
FROM sales.SalesOrderHeader;
SELECT SUM(Freight) AS TotalFreight
FROM sales.SalesOrderHeader;
SELECT SUM(TaxAmt) AS TotalTax
FROM sales.SalesOrderHeader;
SELECT SUM(SubTotal) AS TotalSubTotal
FROM sales.SalesOrderHeader;