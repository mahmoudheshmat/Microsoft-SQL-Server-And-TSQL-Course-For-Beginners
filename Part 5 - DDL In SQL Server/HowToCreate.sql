CREATE DATABASE OurDatabase 

CREATE SCHEMA OurSchema

CREATE SCHEMA OurSchema2 AUTHORIZATION guest

select 
	s.name as schema_name,
	s.schema_id,
	u.name as schema_owner
from 
	sys.schemas s
inner join 
	sys.sysusers uon u.uid = s.principal_idorder by s.name

CREATE TABLE OurSchema.OurTable (
	OurTableID INT NOT NULL, 
	OurTableName VARCHAR(50), 
	OurTableValue INT
)

CREATE TABLE OurSchema.OurTable2 (
	OurTableID INT NOT NULL, 
	OurTableName VARCHAR(50), 
	OurTableValue INT,
	PRIMARY KEY (OurTableID)
)

CREATE TABLE OurSchema.OurTable3 (
	OurTableID INT NOT NULL IDENTITY(1,1), 
	OurTableName VARCHAR (50), 
	OurTableValue INT
	PRIMARY KEY (OurTableID)
)

CREATE TABLE OurSchema.OurTable4 (
	OurTableID INT NOT NULL, 
	OurTable3ID INT NOT NULL,
	OurTableName VARCHAR(50), 
	OurTableValue INT,
	PRIMARY KEY (OurTableID),
	FOREIGN KEY (OurTable3ID) REFERENCES OurSchema.OurTable3(OurTableID)
)

CREATE CLUSTERED INDEX OurClusteredIndex ON OurSchema.OurTable (OurTableID)

CREATE NONCLUSTERED INDEX OurNonClusteredIndex ON OurSchema.OurTable (OurTableName)








