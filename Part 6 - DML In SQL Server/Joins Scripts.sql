CREATE TABLE Customer (
	CustomerID INT IDENTITY(1,1) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Gender VARCHAR(6) NOT NULL
	PRIMARY KEY (CustomerID)
)

CREATE TABLE CustomerOrder (
	CustomerOrderID INT IDENTITY(1,1) NOT NULL,
	CustomerID INT NOT NULL,
	PRIMARY KEY (CustomerOrderID)
)

INSERT INTO Customer (FirstName, LastName, Gender) VALUES ('Andy', 'Morrison', 'Male')
INSERT INTO Customer (FirstName, LastName, Gender) VALUES ('Virginia', 'Reeder', 'Female')
INSERT INTO Customer (FirstName, LastName, Gender) VALUES ('Bruce', 'Laster', 'Male')
INSERT INTO Customer (FirstName, LastName, Gender) VALUES ('Ruth', 'Sands', 'Female')
INSERT INTO Customer (FirstName, LastName, Gender) VALUES ('Michael', 'Villarreal', 'Male')

SELECT * FROM dbo.Customer

INSERT INTO CustomerOrder (CustomerID) VALUES (1)
INSERT INTO CustomerOrder (CustomerID) VALUES (1)
INSERT INTO CustomerOrder (CustomerID) VALUES (2)
INSERT INTO CustomerOrder (CustomerID) VALUES (3)
INSERT INTO CustomerOrder (CustomerID) VALUES (3)
INSERT INTO CustomerOrder (CustomerID) VALUES (10)
INSERT INTO CustomerOrder (CustomerID) VALUES (11)

SELECT * FROM dbo.CustomerOrder

SELECT 
	c.CustomerID, 
	c.FirstName, 
	c.LastName,
	co.CustomerOrderID 
FROM 
	dbo.Customer c
INNER JOIN 
	dbo.CustomerOrder co ON c.CustomerID = co.CustomerID 

SELECT 
	c.CustomerID, 
	c.FirstName, 
	c.LastName,
	co.CustomerOrderID 
FROM 
	dbo.Customer c
LEFT JOIN 
	dbo.CustomerOrder co ON c.CustomerID = co.CustomerID 

SELECT 
	c.CustomerID, 
	c.FirstName, 
	c.LastName,
	co.CustomerOrderID 
FROM 
	dbo.Customer c
RIGHT JOIN 
	dbo.CustomerOrder co ON c.CustomerID = co.CustomerID

SELECT 
	c.CustomerID, 
	c.FirstName, 
	c.LastName,
	co.CustomerOrderID 
FROM 
	dbo.Customer c
FULL JOIN 
	dbo.CustomerOrder co ON c.CustomerID = co.CustomerID


CREATE TABLE Employee (
	EmployeeID INT IDENTITY(1,1) NOT NULL,
	ManagerID INT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL
	PRIMARY KEY (EmployeeID)
)

INSERT INTO Employee (ManagerID, FirstName, LastName) VALUES (NULL, 'Andy', 'Morrison')
INSERT INTO Employee (ManagerID, FirstName, LastName) VALUES (1, 'Virginia', 'Reeder')
INSERT INTO Employee (ManagerID, FirstName, LastName) VALUES (2, 'Bruce', 'Laster')
INSERT INTO Employee (ManagerID, FirstName, LastName) VALUES (3, 'Ruth', 'Sands')
INSERT INTO Employee (ManagerID, FirstName, LastName) VALUES (4, 'Michael', 'Villarreal')

SELECT * FROM Employee

SELECT 
	CONCAT(e.FirstName,' ', e.LastName) [EmployeeName],
	CONCAT(m.FirstName,' ', m.LastName) [ManagerName]
FROM 
	Employee e
INNER JOIN 
	Employee m ON e.ManagerID = m.EmployeeID


-- Get rid of the tables
DROP TABLE Customer
DROP TABLE CustomerOrder
DROP TABLE Employee
