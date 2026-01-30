-- Business question:
-- Is there a seasonal pattern in monthly sales?

-- Description:
-- Average sales value is calculated per calendar month
-- Data from all years is aggregated together
-- OrderDate month is used to identify seasonality

SELECT 
	MONTH(OrderDate) AS order_month,
	ROUND(AVG(TotalDue),2) AS avg_monthly_sales
FROM Sales.SalesOrderHeader
GROUP BY 
	MONTH(OrderDate)
ORDER BY order_month
