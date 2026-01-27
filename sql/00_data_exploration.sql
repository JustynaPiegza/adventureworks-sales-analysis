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
