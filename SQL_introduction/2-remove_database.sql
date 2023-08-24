-- This script deletes the database hbtn_0c_0 if it exists.

-- Set the name of the database you want to delete
SET @db_name = 'hbtn_0c_0';

-- Create a temporary variable to hold the result of DROP DATABASE
SET @drop_result = '';

-- Attempt to drop the database if it exists
-- The DROP DATABASE statement will fail if the database does not exist
DROP DATABASE IF EXISTS hbtn_0c_0;

-- Attempt to drop the database again and store the result in the variable
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLSTATE '42000' SET @drop_result = 'Database did not exist. Nothing to delete.';
    DROP DATABASE hbtn_0c_0;
    SET @drop_result = 'Database has been deleted.';
END;

-- Print the result message
SELECT @drop_result AS Message;
