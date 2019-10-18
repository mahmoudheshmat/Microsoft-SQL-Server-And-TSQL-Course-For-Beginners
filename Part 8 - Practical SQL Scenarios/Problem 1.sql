SELECT DISTINCT JobTitle FROM HumanResources.Employee
WHERE Gender = 'M'

EXCEPT

SELECT DISTINCT JobTitle FROM HumanResources.Employee
WHERE Gender = 'F'

SELECT * FROM HumanResources.Employee WHERE JobTitle = 'Marketing Manager'
