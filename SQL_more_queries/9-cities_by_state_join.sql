#!/bin/bash

-- Write a script that lists all cities contained in the database hbtn_0d_usa
    --Each record should display
    -- Results must be sorted in ascending order by cities.id
    -- You can use only one SELECT statement
    -- The database name will be passed as an argument of the mysql command

CREATE DATABASE hbtn_0d_usa;

USE hbtn_0d_usa;

SELECT cities.id, cities.name, states.name
FROM cities
INNER JOIN states
ON cities.state_id = states.id
ORDER BY cities.id;
