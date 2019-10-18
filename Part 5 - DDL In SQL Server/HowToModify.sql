ALTER TABLE OurSchema.OurTable 
	ADD NewColumn INT

SELECT * FROM OurSchema.OurTable

ALTER TABLE OurSchema.OurTable 
	 ADD NewColumn INT,
	 AnotherColumn INT

ALTER TABLE OurSchema.OurTable 
	 ALTER COLUMN NewColumn VARCHAR(10)

SELECT * FROM OurSchema.OurTable

ALTER TABLE OurSchema.OurTable 
	 DROP COLUMN NewColumn

SELECT * FROM OurSchema.OurTable


