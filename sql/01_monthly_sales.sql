--Business question:
--How does total sales value change over time?

--Description:
--Sales value is calculated using TotalDue
--Data is aggregated on a monthly level
--OrderDate is used as the time dimension


SELECT
	YEAR(OrderDate) AS order_year,
	MONTH(OrderDate) AS order_month,
	ROUND(SUM(TotalDue),2) AS total_sales
FROM Sales.SalesOrderHeader
GROUP BY
	YEAR(OrderDate),
	MONTH(OrderDate)
ORDER BY 
	order_year,
	order_month;
