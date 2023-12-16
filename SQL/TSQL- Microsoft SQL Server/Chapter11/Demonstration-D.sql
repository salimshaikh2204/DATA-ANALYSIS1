-- Demonstration D

-- Step 1: Open a new query window to the TSQL database
USE TSQL;
GO
-- Step 2: Common Table Expressions
-- -- Select this query and execute it to show CTE Examples
WITH CTE_year AS
	(
	SELECT YEAR(orderdate) AS orderyear, custid
	FROM Sales.Orders
	)
SELECT orderyear, COUNT(DISTINCT custid) AS cust_count
FROM CTE_year
GROUP BY orderyear;

