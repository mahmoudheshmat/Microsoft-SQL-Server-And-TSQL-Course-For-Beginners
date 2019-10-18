SELECT BusinessEntityID, FirstName, LastName FROM Person.Person ORDER BY FirstName

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person ORDER BY FirstName DESC

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person ORDER BY FirstName, LastName

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person ORDER BY FirstName ASC, LastName DESC

SELECT BusinessEntityID, CONCAT(FirstName, ' ', LastName) AS [FullName] FROM Person.Person ORDER BY [FullName] DESC
