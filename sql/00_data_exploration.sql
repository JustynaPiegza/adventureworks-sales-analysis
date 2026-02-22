-- Data exploration and quality checks

-- Check null values in key columns

SELECT 
	COUNT(*) AS total_rows,
	COUNT(OrderDate) AS orderdate_not_null,
	COUNT(*) - COUNT(OrderDate) AS orderdate_null,
	COUNT(TotalDue) AS totaldue_not_null,
	COUNT(*) - COUNT(TotalDue) AS totaldue_null
FROM Sales.SalesOrderHeader;

-- Check date range

SELECT
	MIN(OrderDate) AS min_order_date,
	MAX(OrderDate) AS max_order_date
FROM Sales.SalesOrderHeader;

-- Check customer join consistency

SELECT
    COUNT(*) AS total_orders,
    COUNT(o.CustomerID) AS orders_with_customer_id,
    COUNT(c.CustomerID) AS matched_customers
FROM Sales.SalesOrderHeader o
LEFT JOIN Sales.Customer c
    ON o.CustomerID = c.CustomerID;

-- Check missing values in order-related columns

SELECT 
	COUNT(*) AS total_orders,
	SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS missing_customer,
	SUM(CASE WHEN ShipDate IS NULL THEN 1 ELSE 0 END) AS missing_ship_date,
	SUM(CASE WHEN DueDate IS NULL THEN 1 ELSE 0 END) AS missing_due_date,
	SUM(CASE WHEN TotalDue IS NULL THEN 1 ELSE 0 END) AS missing_total
FROM Sales.SalesOrderHeader;

-- Supporting analysis for Business Question 4
-- Average product price

SELECT 
	AVG(ListPrice) AS average_price
FROM Production.Product
WHERE ListPrice > 0;
