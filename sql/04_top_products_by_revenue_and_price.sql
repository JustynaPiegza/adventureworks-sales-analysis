-- Business question:
-- Which products generate the highest total revenue?

-- Description:
-- Revenue is calculated per product using LineTotal
-- Sales data is joined with product prices
-- Results are ordered by total revenue in descending order
-- Top 10 products are selected

-- Business value:
-- Helps identify premium products driving company revenue
-- Supports pricing and product strategy decisions


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
