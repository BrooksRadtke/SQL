--MIN/MAX Exercise
SELECT * FROM Sales.SalesTerritory;

SELECT MIN(SalesYTD) AS "Least Sales"
FROM Sales.SalesTerritory;

SELECT MAX(SalesYTD) AS "Most Sales"
FROM Sales.SalesTerritory;