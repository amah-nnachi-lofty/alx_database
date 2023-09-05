#!/bin/bash

-- Write MYSL a script that creates the database hbtn_0d_usa and the table states (in the database hbtn_0d_usa) on your MySQL server.

    -- states description:
        -- id INT unique, auto generated, can’t be null and is a primary key
        -- name VARCHAR(256) can’t be null
    -- If the database hbtn_0d_usa already exists, your script should not fail
    -- If the table states already exists, your script should not fail

CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
-- tells MySQL to select the database named hbtn_0d_usa. This is necessary because the CREATE TABLE statement must be executed in the context of a database.
USE hbtn_0d_usa;

CREATE TABLE IF NOT EXISTS states (
  id INT NOT NULL AUTO_INCREMENT UNIQUE,
  name VARCHAR(256) NOT NULL,
  PRIMARY KEY (id)
);
