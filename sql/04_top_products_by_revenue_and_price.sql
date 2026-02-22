-- Business question:
-- Which customers generate the highest total revenue?

-- Description:
-- Total sales and number of orders are calculated
-- Data is aggregated using CustomerID
-- Results are ordered by total sales in descending order
-- Top 10 customers are selected 

-- Business value:
-- Helps identify key customers for retention and loyalty programs
-- Supports sales and marketing prioritization

SELECT TOP 10
	p.Name,
	p.ListPrice,
	SUM(d.LineTotal) AS total_revenue
FROM Sales.SalesOrderDetail d
JOIN Production.Product p
	ON d.ProductID = p.ProductID
WHERE p.ListPrice > 0 
GROUP BY 
	p.Name, p.ListPrice
ORDER BY total_revenue DESC;
