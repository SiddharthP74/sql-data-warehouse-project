/*
==============================================================================
  ⚠️ WARNING:
    - This script will create a new database named 'DataWarehouse'.
    - If it already exists, it will NOT be recreated.
    - It also creates the schemas: bronze, silver, and gold (if they don’t exist).
    - Be careful when running this on production or shared environments.
==============================================================================

  Project     : SQL Data Warehouse Setup
  Description : Creates the DataWarehouse database
                and initializes bronze, silver, and gold schemas
  Author      : Siddharth P
==============================================================================
*/

-- Step 1: Create the database if it doesn't exist
IF NOT EXISTS (
    SELECT name FROM sys.databases WHERE name = 'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
    PRINT '✅ Database "DataWarehouse" created.';
END
ELSE
BEGIN
    PRINT 'ℹ️ Database "DataWarehouse" already exists.';
END
GO

-- Step 2: Switch to the database
USE DataWarehouse;
GO

-- Step 3: Create Bronze schema if it doesn't exist
IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'bronze'
)
    EXEC('CREATE SCHEMA bronze');
ELSE
    PRINT 'ℹ️ Schema "bronze" already exists.';
GO

-- Step 4: Create Silver schema if it doesn't exist
IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'silver'
)
    EXEC('CREATE SCHEMA silver');
ELSE
    PRINT 'ℹ️ Schema "silver" already exists.';
GO

-- Step 5: Create Gold schema if it doesn't exist
IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'gold'
)
    EXEC('CREATE SCHEMA gold');
ELSE
    PRINT 'ℹ️ Schema "gold" already exists.';
GO
