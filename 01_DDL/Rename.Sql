/*
============================================================================
Practice   : DDL 
Author     : Priyanka More
Date       : 22-06-2026
============================================================================
SQL Topic  : RENAME TABLE
Question - Rename StudentDetails TO Student table.
Rename EmployeeDetails to Employee table.
Rename Column EmployeeSalary  to Salary.
Rename the column StudentName to FullName.
Rename Column DoctorName to DoctorsName
============================================================================            
*/

-- 9. Rename Table

	USE CollageDB;
		RENAME TABLE StudentDetails TO Student;
        SHOW TABLES;

	USE EmployeeDB;
		RENAME TABLE EmployeeDetails TO Employee;
        SHOW TABLES;
        
-- 10. Rename Column

		ALTER TABLE Employee
        RENAME COLUMN Employeedepartment TO Post;
        SELECT * FROM Employee;
        
-- 11. Create Table 

		USE COllageDB;
        CREATE TABLE Faculty (
			ID INT, 
            NAME VARCHAR (50)
		);
        
        CREATE TABLE Courses(
			ID INT,
            COURSE_NAME VARCHAR (80)
        );
        
        SHOW TABLES;

-- 12. Rename Table Name

	RENAME TABLE FACULTY TO FACULTY_DETAILS;
    RENAME TABLE COURSES TO COURSES_DETAILS;
    
    SHOW TABLES;
