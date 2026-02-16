/*
====================================================================================
Create Database and Schemas
=====================================================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking it already exists.
    If the database exists , it is dropped and recreated.Additionally, scripts sets up three schemas 
    within the database: 'bronze' ,'silver' and 'gold'

WARNING:
  Running this script will drop entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted.Proceed with caution
  and ensure you have proper backups in place before executing this script.
*/

--Drop and recreate the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE_USER ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse
  END;
  GO
    

--Master database is system database where you can go and create other databases
use master 

--Create Database 'Datawarehouse'
CREATE DATABASE DataWarehouse;

--Schema is like container to keep things organised
--Create schema for bronze ,silver and gold layer

CREATE SCHEMA bronze

CREATE SCHEMA silver

CREATE SCHEMA gold


