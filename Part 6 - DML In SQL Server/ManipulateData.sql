USE AdventureWorks2017

SELECT [Name], [ModifiedDate] FROM [Person].[PhoneNumberType] WHERE [Name] = 'Emergency Phone Number'

INSERT INTO [Person].[PhoneNumberType]
(
	[Name],
	[ModifiedDate]
)
VALUES
(
	'Emergency Phone Number',
	GETDATE()
)

SELECT [Name], [ModifiedDate] FROM [Person].[PhoneNumberType] WHERE [Name] = 'Emergency Phone Number'

SELECT [Name], [ModifiedDate] FROM [Person].[PhoneNumberType] WHERE PhoneNumberTypeID =  4

UPDATE [Person].[PhoneNumberType]
SET [Name] = 'Emergency'
WHERE PhoneNumberTypeID = 4

SELECT [Name], [ModifiedDate] FROM [Person].[PhoneNumberType] WHERE PhoneNumberTypeID =  4

DELETE FROM [Person].[PhoneNumberType]
WHERE PhoneNumberTypeID = 4

SELECT [Name], [ModifiedDate] FROM [Person].[PhoneNumberType] WHERE PhoneNumberTypeID =  4
