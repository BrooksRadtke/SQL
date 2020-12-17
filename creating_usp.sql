USE AdventureWorks2017
GO
CREATE PROC dbo.uspGetAddress
AS
SELECT * FROM Person.Address
GO
EXEC dbo.uspGetAddress

DROP PROC IF EXISTS dbo.uspGetAddress