-- This script deletes the database hbtn_0c_0 if it exists.

-- Set the name of the database you want to delete
SET @db_name = 'hbtn_0c_0';

-- Check if the database exists
-- Query the information_schema.schemata table to determine if the database exists
SELECT 1 INTO @db_exists FROM information_schema.schemata WHERE schema_name = @db_name;

-- Drop the database if it exists
-- If the database exists (indicated by @db_exists = 1), proceed with deletion
IF @db_exists = 1 THEN
    -- Temporarily disable foreign key checks to prevent potential issues during deletion
    SET FOREIGN_KEY_CHECKS = 0;
    
    -- Drop the database
    DROP DATABASE hbtn_0c_0;
    
    -- Re-enable foreign key checks
    SET FOREIGN_KEY_CHECKS = 1;
    
    -- Print a message indicating that the database has been deleted
    SELECT CONCAT('Database ', @db_name, ' has been deleted.') AS Message;
    
-- If the database doesn't exist, print a message indicating that there's nothing to delete
ELSE
    SELECT CONCAT('Database ', @db_name, ' does not exist. Nothing to delete.') AS Message;
END IF;
