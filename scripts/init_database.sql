/*
==================================================================
Create Database and Schemas 
==================================================================

Script Purpose: 

  This script creates a new database named 'DataWarehouse' after checking if it already existis. 
  If the database existis, it is dropped and recreated. Aditionally, the script sets up three schemas within the database: 'bronze', 'silver' and 'gold'. 

WARNING: 

  This script will drop the entire 'DataWarehouse' database if it already exists. 
  All data in the database will be permanently deleted. Proceed with caution and ensure there are proper backups before running it. 

*/

-- Create Database 'DataWarehouse' 

USE master;
GO

IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse; 
END;
GO

-- Create Database 'DataWarehouse' database 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas 
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO 


