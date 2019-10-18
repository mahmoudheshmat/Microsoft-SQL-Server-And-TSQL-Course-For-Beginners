DROP INDEX OurClusteredIndex ON OurSchema.OurTable
DROP INDEX OurNonClusteredIndex ON OurSchema.OurTable

DROP TABLE OurSchema.OurTable

-- This will fail since it still has database objects inside of it we will need to remove OurTable2, OurTable3, OurTable4
DROP SCHEMA OurSchema

DROP TABLE OurSchema.OurTable2
DROP TABLE OurSchema.OurTable3
DROP TABLE OurSchema.OurTable4

-- This time it will work
DROP SCHEMA OurSchema

DROP DATABASE OurDatabase




