-- This script lists all the tables of a database

-- Get the database name from the command line

SET @database_name = $1;

-- Define the database name

SET @database_name = 'mysql';

-- The USE statement selects the current database

USE @database_name;

-- The SHOW TABLES statement lists all the tables in the database

SHOW TABLES;
