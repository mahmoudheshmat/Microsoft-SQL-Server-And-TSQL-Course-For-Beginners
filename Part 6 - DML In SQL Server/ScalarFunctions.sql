SELECT BusinessEntityID, CONCAT(FirstName, ' ', LastName) FROM Person.Person

SELECT BusinessEntityID, SUBSTRING(FirstName, 1, 4) FROM Person.Person

SELECT BusinessEntityID, UPPER(FirstName), LOWER(LastName) FROM Person.Person

SELECT TRIM(' Avetis ')

SELECT LTRIM(' Avetis ') 

SELECT RTRIM(' Avetis ') 

SELECT GETDATE()

SELECT DATENAME(year, '2019-10-06')

SELECT DATEDIFF(day, '2019-9-7', '2019-9-10')

SELECT DATEADD(day, 1, '2019-9-7')

SELECT ABS(-5)

SELECT RAND()
SELECT RAND(5)

SELECT CEILING(5.55)

SELECT FLOOR(5.55)

SELECT ISNULL('MyName', 'MyBackupName')
SELECT ISNULL(NULL, 'MyBackupName')

SELECT COALESCE('MyName', 'MyBackupName')
SELECT COALESCE(NULL, 'MyBackupName')
SELECT COALESCE(NULL, NULL, 'MyBackupName', 'MyLastBackupName')

SELECT CAST('10-01-2019' AS DATETIME)





