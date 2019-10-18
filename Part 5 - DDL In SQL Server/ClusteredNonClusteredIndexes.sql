Use AdventureWorks2017

-- Create a test table for demonstrating how indexes behave
CREATE TABLE TestCustomer(
	CustomerID INT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	AccountNumber VARCHAR(10) NOT NULL
)

-- This is inserting some test data into the new TestCustomer table - don't worry about the syntax we'll go over INSERT & JOIN later
INSERT INTO TestCustomer (CustomerID, FirstName, LastName, AccountNumber)
SELECT p.BusinessEntityID, p.FirstName, p.LastName, c.AccountNumber FROM Person.Person p
INNER JOIN Sales.Customer c ON c.PersonID = p.BusinessEntityID

 -- Let's see how it all looks like
SELECT CustomerID, FirstName, LastName, AccountNumber FROM TestCustomer

-- Even when looking for something specific in a heap table/no index we are going to perform a Table Scan operation
SELECT * FROM TestCustomer WHERE CustomerID = 3

-- Let's now add a Clustered Index
CREATE CLUSTERED INDEX CustomerIdIndex ON TestCustomer(CustomerID)

-- After the Clustered Index is added we can perform an Index Seek (Clustered Index Seek)
SELECT * FROM TestCustomer WHERE CustomerID = 3 

-- Let's drop the Clustered Index and add a NonClustered Index and test that
DROP INDEX CustomerIdIndex ON TestCustomer
CREATE NONCLUSTERED INDEX NonClusteredCustomerIdIndex ON TestCustomer(CustomerID)

-- After the NonClustered Index is added we are still performing an Index Seek (NonClustered Index Seek)
SELECT * FROM TestCustomer WHERE CustomerID = 3

/*
	Let's search on the AccountNumber of the TestCustomer table
	And remember the actual table is now a heap, NonClustered Index is saved in a separate structure

	You will see that it performs a table scan since the NonClustered Index is only set on the CustomerID

	PS: This is how you leave multi-line comments and -- is used for single line comments
*/ 
SELECT * FROM TestCustomer WHERE AccountNumber = 'AW00029491'

-- Let's now drop the NonClustered Index and add a ClusteredIndex back on the CustomerID again
DROP INDEX NonClusteredCustomerIdIndex ON TestCustomer
CREATE CLUSTERED INDEX CustomerIdIndex ON TestCustomer(CustomerID)

/*
	Let's search on the AccountNumber again and we will see that it is an Index Scan this time	
	The reason is becasue the actual physical structure has been changed
*/
SELECT * FROM TestCustomer WHERE AccountNumber = 'AW00029491'

-- Lastly, let's see what happens if you try to add another ClusteredIndex to the same table - it breaks since you can only have one
CREATE CLUSTERED INDEX CustomerAccountNumberIndex ON TestCustomer(AccountNumber)

-- We can add another NonClustered Index as mentioned
CREATE NONCLUSTERED INDEX NonClusteredCustomerAccountNumberIndex ON TestCustomer(AccountNumber)

/*
	Performing the same AccountNumber search again will perform an Index Seek now since the column has an associated Index with an 
	organized structure that is saved somewhere - separate from the table
*/
SELECT * FROM TestCustomer WHERE AccountNumber = 'AW00029491'

DROP TABLE TestCustomer