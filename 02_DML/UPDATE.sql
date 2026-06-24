-- ============================================================================
-- Practice   : DML 
-- Author     : Priyanka More
-- Date       : 24-06-2026
-- ============================================================================
-- UPDATE
-- Q.1 Update the salary of EmployeeID = 5 to 55000.
-- =============================================================================

	SHOW DATABASES;
    USE EMPLOYEEDB;
    SHOW TABLES;
    SELECT * FROM EMPLOYEE;
    
    UPDATE EMPLOYEE
    SET SALARY = 55000
    WHERE EMPLOYEEID = 05; 
    
-- ============================================================================
-- Q.2 Change the city from Pune to Mumbai for all employees.
-- =============================================================================

	UPDATE EMPLOYEE
    SET EmployeeCity = 'Mumbai'
    WHERE EmployeeCity = 'Pune';
    
-- ============================================================================
-- Q.3 Update the post of Ayush to Senior Tester.
-- =============================================================================

	UPDATE EMPLOYEE
    SET POST = 'Senior Tester'
    WHERE EMPLOYEENAME = 'AAYUSH';
    SELECT * FROM EMPLOYEE;
    
-- ============================================================================
-- Q.4 Increase salary by 5000 for employees working as Developers.
-- =============================================================================

	UPDATE EMPLOYEE
    SET SALARY = SALARY + 50000
    WHERE POST = 'DEVLOPER';
	SELECT * FROM EMPLOYEE;
    
-- ============================================================================
-- Q.5 Update both salary and city of EmployeeID = 8.
-- =============================================================================

	UPDATE EMPLOYEE
    SET SALARY = 550000, EMPLOYEECITY = 'Pune'
    WHERE EMPLOYEEID = 08;
    SELECT * FROM EMPLOYEE;

-- =============================================================================    
-- Q6. Increase salary by 10% for employees working in the IT department.
-- =============================================================================   
    
	UPDATE EMPLOYEE
    SET SALARY = SALARY + (SALARY*10/100)
    WHERE POST = 'Tester';
	SELECT * FROM EMPLOYEE;
    
-- =============================================================================    
-- Q7. Change the city to 'Mumbai' for all employees currently living in 'Pune'.
-- =============================================================================

	UPDATE EMPLOYEE
    SET EMPLOYEECITY = 'Mumbai'
    WHERE EMPLOYEECITY = 'Pune';
    
-- =============================================================================    
-- Q8. Promote all Data Analysts to Senior Data Analyst.
-- =============================================================================

	UPDATE EMPLOYEE
    SET POST = 'Senior Analyst'
    WHERE POST = 'Analyst';
    SELECT * FROM EMPLOYEE;
    
-- ==================================================================================    
-- Q9. -- Q4. Increase salary by 5000 for employees whose salary is less than 100000.
-- ==================================================================================

	UPDATE EMPLOYEE
    SET SALARY = SALARY + 5000
    WHERE SALARY < 100000;
  
-- ==========================================================================================
-- Q10. Add 3000 salary increment only to employees from Nagpur working in the IT department.
-- ==========================================================================================

	 UPDATE EMPLOYEE
     SET SALARY = SALARY + 3000
     WHERE EMPLOYEECITY = 'MUMBAI' and POST = 'SENIOR TESTER';
     SELECT * FROM EMPLOYEE;