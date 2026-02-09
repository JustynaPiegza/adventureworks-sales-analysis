-- Business question:
-- Which customers generate the highest total sales value?

-- Description:
-- Total sales and number of orders are calculated per customer
-- Data is aggregated using CustomerID
-- Results are ordered by total sales in descending order
-- Top 10 customers are selected

SELECT TOP 10
    soh.CustomerID,
    COUNT(*) AS number_of_orders,
    ROUND(SUM(soh.TotalDue), 2) AS total_sales
FROM Sales.SalesOrderHeader soh
LEFT JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
GROUP BY 
    soh.CustomerID
ORDER BY total_sales DESC;
