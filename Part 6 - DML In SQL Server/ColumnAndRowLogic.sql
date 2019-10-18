SELECT 
	CASE FirstName
		WHEN 'Ken' THEN 'Ken Found'
		WHEN 'Miller' THEN 'Miller Found'
		ELSE FirstName
	END AS [FirstNameWithLogic]
FROM
Person.Person

SELECT 
	CASE
		WHEN FirstName = 'Ken' THEN 'Ken Found'
		WHEN LastName = 'Duffy' THEN 'Duffy Found'
		ELSE FirstName
	END AS [FirstNameOrLastNameWithLogic]
FROM
Person.Person

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person WHERE Suffix = 'Jr.'

SELECT TOP 10 BusinessEntityID, FirstName, LastName FROM Person.Person

SELECT TOP 10 BusinessEntityID, FirstName, LastName FROM Person.Person WHERE Suffix = 'Jr.'

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person WHERE Suffix = 'Jr.' AND FirstName = 'Dan'

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person WHERE Suffix = 'Jr.' OR FirstName = 'Dan'

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person WHERE FirstName IN ('Eric', 'Adam')

SELECT BusinessEntityID, FirstName, LastName FROM Person.Person WHERE Suffix IS NOT NULL
