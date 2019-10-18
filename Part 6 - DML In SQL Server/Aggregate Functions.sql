CREATE TABLE Orders (
	OrderID INT NOT NULL,
	CustomerID INT NULL,
	Category VARCHAR(30) NULL, 
	Amount INT NULL,
	PRIMARY KEY (OrderID)
)

INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (1, 1, 'Electronics', 900)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (2, 1, 'Furniture', 800)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (3, 2, 'Furniture', 10)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (4, 2, 'Furniture', 30)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (5, 2, 'Miscellaneous', 40)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (6, 3, 'Miscellaneous', 50)
INSERT INTO Orders (OrderID, CustomerID, Category, Amount) VALUES (7, NULL, NULL, NULL)

SELECT SUM(Amount) FROM Orders
SELECT SUM(Amount) FROM Orders WHERE CustomerID = 1
SELECT MAX(Amount), SUM(Amount) FROM Orders WHERE CustomerID = 1

SELECT COUNT(*) FROM Orders
SELECT COUNT(CustomerID) FROM Orders
SELECT COUNT(DISTINCT CustomerID) FROM Orders

SELECT CustomerID, SUM(Amount) FROM Orders GROUP BY CustomerID
SELECT CustomerID, Category, SUM(Amount) FROM Orders GROUP BY CustomerID, Category
SELECT CustomerID, Category, SUM(Amount) FROM Orders GROUP BY CustomerID, Category HAVING SUM(Amount) > 100
SELECT CustomerID, Category, SUM(Amount) FROM Orders WHERE Amount > 10 GROUP BY CustomerID, Category HAVING SUM(Amount) > 50

-- Get rid of the tables
DROP TABLE Orders

