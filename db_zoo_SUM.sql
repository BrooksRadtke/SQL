USE [db_zoo_v2]
GO

/* CONVERT(VARCHAR(50), @totalHab) = This is converting the data from MONEY to VARCHAR
	CHAR(13) = LINE BREAK
	CHAR(9) = TAB BREAK*/

DECLARE @totalHab Money;
DECLARE @totalNut MONEY;
DECLARE @results MONEY;

SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@totalHab + @totalNut);

PRINT
(	CONVERT(VARCHAR(50), @totalHab) + CHAR(9) + ' - Total Habitat Cost' + CHAR(13) +
	CONVERT(VARCHAR(50), @totalNut) + CHAR(9) + CHAR(9) + ' - Total Nutritional Cost' + CHAR(13) + '-----' + CHAR(13) +
	CONVERT(VARCHAR(50), @results) 
);