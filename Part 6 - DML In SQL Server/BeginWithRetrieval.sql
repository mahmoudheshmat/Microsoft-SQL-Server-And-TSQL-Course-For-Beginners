SELECT * FROM Person.Person

SELECT  BusinessEntityID, FirstName, LastName, Suffix FROM Person.Person

SELECT SalesOrderDetailID, OrderQty, UnitPrice, OrderQty * UnitPrice FROM Sales.SalesOrderDetail

SELECT 
	SalesOrderDetailID, 
	OrderQty, 
	UnitPrice, 
	OrderQty * UnitPrice [TotalPrice]
FROM 
	Sales.SalesOrderDetail

SELECT sod.SalesOrderDetailID, sod.OrderQty, sod.UnitPrice, sod.OrderQty * sod.UnitPrice AS [TotalPrice] FROM Sales.SalesOrderDetail AS sod

SELECT BusinessEntityID, FirstName + ' ' + LastName AS [FullName] FROM Person.Person

SELECT 'Person:' AS [Entity], BusinessEntityID, FirstName + ' ' + LastName AS [FullName] FROM Person.Person

