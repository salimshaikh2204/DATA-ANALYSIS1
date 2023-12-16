-- Demonstration B

-- Step 1:
-- Switch the query window to use your copy of the AdventureWorksLT database


select * from SalesLT.Customer

-- Step 2: Using the CONCAT function to join strings
SELECT CustomerId, FirstName, MiddleName, LastName, 
CONCAT(LastName, N', ' + FirstName, N' ', MiddleName) AS FullName
FROM SalesLT.Customer;

-- Step 3: Use concatenation with + (plus) in a query
SELECT CustomerId, FirstName, MiddleName, LastName, 
FirstName + N' '+ MiddleName + N' ' + LastName AS FullName
FROM SalesLT.Customer;

-- Step 4: Use string functions in a query


SELECT SUBSTRING('Microsoft SQL Server',11,3) AS Result;

SELECT LEFT('Microsoft SQL Server',9) AS left_example, RIGHT('Microsoft SQL Server',6) as right_example;

SELECT LEN('Microsoft SQL Server     ') AS [LEN];
SELECT DATALENGTH('Microsoft SQL Server     ') AS [DATALENGTH];

SELECT CHARINDEX('SQL','Microsoft SQL Server') AS Result;

SELECT REPLACE('Learning about T-SQL string functions','T-SQL','Transact-SQL') AS Result;

SELECT UPPER('Microsoft SQL Server') AS UP, LOWER('Microsoft SQL Server') AS LOW;

-- Step 5: Use the LIKE predicate in a query - the % (percent) character
SELECT AddressID, CountryRegion
FROM SalesLT.Address
WHERE CountryRegion LIKE N'United%'

