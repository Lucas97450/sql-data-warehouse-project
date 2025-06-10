-- Create Database 'DataWarehouse'

USE master;

-- Drop and recreate the database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse' )
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the database
CREATE DATABASE DataWarehouse
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
