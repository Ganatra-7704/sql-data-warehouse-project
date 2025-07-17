/*
============================
Create Database and Schemas
============================
Script Purpose:
	This script creates a new database named 'DataWarehouse'.
	If the database exists, we can then drop and then recreate it, or use a new name for our database. 
	Additionally, the script sets up three schemas within the database: 'bronze', 'silver' , and 'gold'.
*/

USE Master;

-- Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
