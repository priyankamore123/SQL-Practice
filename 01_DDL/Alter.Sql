/*
============================================================================
SQL Topic  : ALTER TABLE
Question - Add a column Email to the StudentDetails table.
Add a column PhoneNO to the Employee table.
Modify the Salary column to INT.
Rename the column StudentName to FullName.
Perform all of the following in DoctorDetails Table:
Add PhoneNo
Rename DoctorAge to Age
Drop PhoneNo
============================================================================            
*/
-- 5. Using Alter Table Add Column

USE CollageDB;
	ALTER TABLE StudentDetails
	ADD StdEmail VARCHAR(100);
SELECT * FROM StudentDetails;

USE EmployeeDB;
	ALTER TABLE EmployeeDetails
	ADD EmpPhoneNO INT;
SELECT * FROM EmployeeDetails;

-- 6. Modify Data Type

	ALTER TABLE EmployeeDetails
	MODIFY EmployeeSalary INT;
SELECT * FROM EmployeeDetails;

-- 7. Rename Column

USE CollageDB;
	ALTER TABLE StudentDetails
	RENAME COLUMN StdName TO StdFullName;
SELECT * FROM StudentDetails;

USE HospitalDB;
	ALTER TABLE DoctorDetails
    ADD DoctorPhone INT;
SELECT * FROM DoctorDetails;

-- 8. Drop Column

	ALTER TABLE DoctorDetails
    RENAME COLUMN DoctorAge TO Age,
    DROP COLUMN DoctorPhone;
SELECT * FROM DoctorDetails;
