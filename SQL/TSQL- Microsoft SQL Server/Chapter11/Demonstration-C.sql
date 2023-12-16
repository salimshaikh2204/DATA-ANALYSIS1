-- Demonstration C

-- Step 1: Open a new query window to the TSQL database
USE TSQL;
GO

-- Step 2: Column aliases in derived tables
-- Select this query and execute it to show internal column aliases

SELECT orderyear, COUNT(DISTINCT cid) AS cust_count
FROM (
		SELECT YEAR(orderdate) AS orderyear, custid as cid
		FROM Sales.Orders) AS derived_year
GROUP BY orderyear;

-- Select this query and execute it to show external column aliases
SELECT orderyear, COUNT(DISTINCT cid) AS cust_count
FROM (
			SELECT YEAR(orderdate), custid
			FROM Sales.Orders) AS derived_year(orderyear, cid)
GROUP BY orderyear;

-- Step 3: Use a local variable as a parameter for a derived table
DECLARE @emp_id INT = 9;
SELECT orderyear, COUNT(DISTINCT custid) AS cust_count
FROM (	
		SELECT YEAR(orderdate) AS orderyear, custid
		FROM Sales.Orders
		WHERE empid=@emp_id
	) AS derived_year
GROUP BY orderyear;



