-- This script creates a table called first_table in the database specified by the first argument
-- The IF EXISTS clause ensures that the table is not created if it already exists
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);