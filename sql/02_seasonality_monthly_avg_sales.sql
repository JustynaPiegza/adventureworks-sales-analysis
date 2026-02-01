-- Business question:
-- Is there a seasonal pattern in monthly sales?

-- Description:
-- Average order value and number of orders are calculated per calendar month 
-- Data from all years is aggregated together 
-- OrderDate month is used to identify seasonality
-- Results allow comparison of customer activity and order value by month

SELECT 
	MONTH(OrderDate) AS order_month,
	COUNT (*) AS number_of_orders,
	ROUND(AVG(TotalDue),2) AS avg_order_value
FROM Sales.SalesOrderHeader
GROUP BY 
	MONTH(OrderDate)
ORDER BY order_month
