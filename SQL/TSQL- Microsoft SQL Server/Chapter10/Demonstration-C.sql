--  Demonstration C

--  Step 1: Open a new query window to the TSQL database
USE TSQL;
GO

-- Step 2: Using EXISTS
-- Select this query and execute it to show
-- any customer who placed an order
SELECT custid, companyname
FROM Sales.Customers AS c
WHERE EXISTS (
	SELECT * 
	FROM Sales.Orders AS o
	WHERE c.custid=o.custid);

-- Step 3: Using NOT EXISTS	
-- Return any customer who has not placed an order
SELECT custid, companyname
FROM Sales.Customers AS c
WHERE NOT EXISTS (
	SELECT * 
	FROM Sales.Orders AS o
	WHERE c.custid=o.custid);
	
