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
