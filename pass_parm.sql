CREATE PROC dbo.uspGetAddress3 @City NVARCHAR(30), @PostalCode NVARCHAR(10)
AS
SELECT * FROM  Person.Address
WHERE City LIKE @City + '%' AND PostalCode LIKE @PostalCode
GO
EXEC dbo.uspGetAddress3 @City='New', @PostalCode='[98]%'

CREATE PROCEDURE dbo.uspGetAddress4 @CityName NVARCHAR(30) OUTPUT
AS
SELECT City FROM Person.Address
WHERE AddressID=38 AND PostalCode=48226
GO
DECLARE @CityName NVARCHAR(30)
EXEC  dbo.uspGetAddress4 @CityName=@CityName OUTPUT
PRINT @CityName