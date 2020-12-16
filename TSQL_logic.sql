

PRINT 'Hello, World!'

DECLARE @myVariable INT
SET @myVariable = 10
PRINT @myVariable

DECLARE @var1 INT, @var2 INT
SET @var1 = 2
SET @var2 = 5

Print 'Variable 1 = ' + CONVERT(varchar(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(varchar(5), @var2) + CHAR(13) + 'Total: '
Print @var1 + @var2

IF @var1 < 2
	BEGIN
		Print '@var1 < 2'
	END
ELSE IF @var1 > 1 AND @var1 < 3
	BEGIN
		Print '@var1 > 1 AND @var1 < 3'
	END
ELSE IF @var1 = 4 OR @var1 < 6
	BEGIN
		Print '@var1 = 4 OR @var1 < 6'
	END
ELSE 
	PRINT '@var1 does not qualify'

/* PRINT 'Having fun with ' + 'TSQL and MS SQL Server!' */