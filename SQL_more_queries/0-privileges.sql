#!/bin/bash

-- Write a script that lists all privileges of the MySQL users user_0d_1 and user_0d_2 on your server (in localhost).
-- List privileges for user_0d_1
echo "Privileges for user_0d_1:"
SHOW GRANTS FOR 'user_0d_1'@'localhost';

echo "Privileges for user_0d_2:"
SHOW GRANTS FOR 'user_0d_2'@'localhost';
