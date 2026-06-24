-- ============================================================================
-- Practice   : DML 
-- Author     : Priyanka More
-- Date       : 23-06-2026
-- ============================================================================

-- Q1.Insert one employee record into the Employee table.
-- =============================================================================


	SHOW DATABASES;
	USE EMPLOYEEDB;
	SHOW TABLES;
	SELECT * FROM EMPLOYEE;
    
    INSERT INTO  EMPLOYEE VALUES (01,'Anjali','Analyst','Pune');
    
 -- =============================================================================  
--  Q2. Insert five employee records using a single INSERT statement.
-- =============================================================================
	INSERT INTO EMPLOYEE VALUES 
		(02,'Aayush','Acountant','Mumbai'),
        (03,'Nayan','Devloper','Nagpur'),
        (04,'Akash','Tester','Delhi'),
        (05,'Varsha','sacience','Banglore'),
        (06,'Amit','Networking','Pune');
 
-- =============================================================================
-- Q3.Insert a record by specifying only EmployeeName and 
-- EmployeePost.(Assume other columns allow NULL values.)
-- =============================================================================

	INSERT INTO Employee  (EmployeeID ,EmployeeName,Post)
    VALUES (07,'Kumar','Kolhapur');
    
-- =============================================================================
-- Q4.Insert a new employee whose salary is 65000 and city is Pune.
-- =============================================================================

	ALTER TABLE Employee
    ADD COLUMN Salary Decimal(10.2);
    
	INSERT INTO Employee VALUES (08,'swati','designer','Pune',65000);
    
-- =============================================================================
-- Q5.Insert record into the Student table where AdmissionDate is today's date                    
-- ============================================================================   
    
    USE Collagestudents;
    SHOW Tables;
    SELECT * FROM STUDENT;
    
	ALTER TABLE Student
	ADD COLUMN AddmissionDate Date;
    
    INSERT INTO Student VALUES (08,'Ujwal',25,'Pune',95,'2026-06-23');
    
    SELECT * FROM STUDENT;
