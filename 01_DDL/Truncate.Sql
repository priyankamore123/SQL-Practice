/*
============================================================================
SQL Topic  : TRUNCATE TABLE
============================================================================          
*/
-- Question 1. Truncate the Employee table.
-- Display all records again to verify the table is empty.

SHOW DATABASES;
USE EmployeeDB;
SHOW TABLES;

TRUNCATE TABLE Employee;
SELECT * FROM Employee;

USE CollageDB;
SHOW TABLES;
SELECT * FROM STUDENT;

TRUNCATE TABLE STUDENT;
