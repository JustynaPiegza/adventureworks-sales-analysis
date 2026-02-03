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
