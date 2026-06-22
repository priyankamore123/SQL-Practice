/*
============================================================================
Practice   : DDL 
Author     : Priyanka More
Date       : 22-06-2026
============================================================================
SQL Topic  : CREATE DATABASE
Question - Create a database named CollageDB,LibraryDB,
		    HospitalDB,EmployeeDB and display all databases.
============================================================================            
*/
-- 1. Create Database

	  CREATE DATABASE CollageDB;
    CREATE DATABASE LibraryDB;
    CREATE DATABASE HospitalDB;
    CREATE DATABASE EmployeeDB;
    
    SHOW DATABASES;
    
/*
============================================================================
SQL Topic  : CREATE TABLE
Question - Create a Table StudentDetails with ID,Name,Age in CollageDB,
Create a Table BookDetails with ID,Name,Writer in LibraryDB,Create a Table
DoctorDetails with ID, Name,Department,Age,Salary in HospitalDB,Create a
Table EmployeeDetails with ID,Name,Department,Salary,City in EmployeeDB.
============================================================================            
*/
-- 2. Use Database

    USE CollageDB;
    
-- 3. Create Table

		CREATE TABLE StudentDetails (
    			StdID INT,
    			StdName VARCHAR(50),
    			StdAge INT
    );
    
-- 4. Show Table StudentDetails

SELECT * FROM StudentDetails;

	USE LibraryDB;
		CREATE TABLE BookDetails (
			BookID INT,
			BookName VARCHAR(50),
			BookWriter VARCHAR(50)
    );
    
SELECT * FROM BookDetails;

   USE HospitalDB;
		CREATE TABLE DoctorDetails (
			DoctorID INT,
			DoctorName VARCHAR(50),
			DoctorDepartment VARCHAR(50),
            DoctorSalary DECIMAL(10.2),
            DoctorAge INT
    );
    
SELECT * FROM DoctorDetails;
    
	USE EmployeeDB;
		CREATE TABLE EmployeeDetails (
			EmployeeID INT,
			EmployeeName VARCHAR(50),
			EmployeeDepartment VARCHAR(50),
            EmployeeSalary DECIMAL(10.2),
            EmolyeeCity VARCHAR(50)
    );
    
SELECT * FROM EmployeeDetails;

/*
