-- ====================================================================================================
-- MySQL Mini Project "PetCare Clinic Management System"
-- Auther Name    : Priyanka More 
-- Date            : 29-07-2026
-- ====================================================================================================
-- ====================================================================================================
-- Step 1: Create Database 
-- ==================================================================================================== 

	CREATE DATABASE PetCareClinicDB;
    
-- ==================================================================================================== 

	USE PetCareClinicDB;
    
-- ==================================================================================================== 
-- Step 2: Create Table Owner
-- ==================================================================================================== 
	
    CREATE TABLE Owner (
			Owner_ID INT,
            Owner_Name VARCHAR(50),
            Gender VARCHAR(6),
            City VARCHAR(60),
            Phone VARCHAR(10)
		);
      
-- ==================================================================================================== 
-- Step 3: Create Table Pets
-- ==================================================================================================== 

	CREATE TABLE Pets (
			Pet_ID INT Primary Key,
            Pet_Name VARCHAR(50),
            Pet_Type VARCHAR(50),
            Breed VARCHAR(50),
            Age INT,
            Owner_ID INT,
			FOREIGN KEY (Owner_ID) REFERENCES Owner(Owner_ID)
		);

-- ==================================================================================================== 
-- Step 4: Create Table Doctors
-- ==================================================================================================== 

	CREATE TABLE Doctors (
				Doctor_ID INT PRIMARY KEY,
                Doctor_Name VARCHAR(50),
                Specialization VARCHAR(50),
                Experiance INT
			);
            
-- ==================================================================================================== 
-- Step 4: Create Table Appoinments
-- ==================================================================================================== 

	CREATE TABLE Appoinments (
				Appoinment_ID INT PRIMARY KEY,
                Pet_ID INT,
                Doctor_Id INT,
                Visit_Date DATE,
                Status VARCHAR(20),
                FOREIGN KEY (Pet_ID) REFERENCES Pets(Pet_ID),
                FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
            );
            
-- ==================================================================================================== 
-- Step 5: Isert 20 record in Table Owner
-- ==================================================================================================== 

	INSERT INTO Owner VALUES
				(1,'Rahul Patil','Male','Pune','9876543210'),
				(2,'Sneha Sharma','Female','Mumbai','9876543211'),
				(3,'Amit Joshi','Male','Nashik','9876543212'),
				(4,'Priya More','Female','Kolhapur','9876543213'),
				(5,'Rohan Deshmukh','Male','Nagpur','9876543214'),
				(6,'Neha Kulkarni','Female','Pune','9876543215'),
				(7,'Vijay Jadhav','Male','Satara','9876543216'),
				(8,'Pooja Shah','Female','Mumbai','9876543217'),
				(9,'Akshay Patil','Male','Sangli','9876543218'),
				(10,'Kiran Pawar','Female','Nashik','9876543219'),
				(11,'Anjali Kale','Female','Pune','9876543220'),
				(12,'Sagar More','Male','Kolhapur','9876543221'),
				(13,'Meena Joshi','Female','Mumbai','9876543222'),
				(14,'Nikhil Patil','Male','Pune','9876543223'),
				(15,'Riya Sharma','Female','Nagpur','9876543224'),
				(16,'Aditya Kulkarni','Male','Satara','9876543225'),
				(17,'Komal Desai','Female','Sangli','9876543226'),
				(18,'Manish Shinde','Male','Nashik','9876543227'),
				(19,'Snehal Patil','Female','Pune','9876543228'),
				(20,'Raj More','Male','Mumbai','9876543229');
                
-- ==================================================================================================== 
-- Step 5: Isert 20 record in Table Pets
-- ==================================================================================================== 

	INSERT INTO Pets VALUES
				(1,'Bruno','Dog','Labrador',3,1),
				(2,'Tommy','Dog','Beagle',5,2),
				(3,'Milo','Cat','Persian',2,3),
				(4,'Coco','Bird','Parrot',1,4),
				(5,'Rocky','Dog','German Shepherd',4,5),
				(6,'Bella','Cat','Siamese',3,6),
				(7,'Max','Dog','Pug',6,7),
				(8,'Luna','Cat','British Shorthair',2,8),
				(9,'Charlie','Dog','Golden Retriever',5,9),
				(10,'Daisy','Rabbit','Holland Lop',1,10),
				(11,'Simba','Cat','Persian',4,11),
				(12,'Jack','Dog','Boxer',3,12),
				(13,'Oreo','Cat','Maine Coon',2,13),
				(14,'Leo','Dog','Rottweiler',7,14),
				(15,'Misty','Bird','Cockatiel',2,15),
				(16,'Buddy','Dog','Pomeranian',3,16),
				(17,'Cleo','Cat','Angora',5,17),
				(18,'Sheru','Dog','Indie',4,18),
				(19,'Snowy','Rabbit','Mini Rex',1,19),
				(20,'Tiger','Cat','Bengal',3,20);
                
-- ==================================================================================================== 
-- Step 5: Isert 20 record in Table Doctors
-- ==================================================================================================== 

	INSERT INTO Doctors VALUES
				(1,'Dr. Amit Kulkarni','Veterinary Surgeon',10),
				(2,'Dr. Neha Patil','Animal Physician',8),
				(3,'Dr. Raj Sharma','Pet Surgeon',12),
				(4,'Dr. Priya More','Veterinary Doctor',6),
				(5,'Dr. Rohan Joshi','Animal Specialist',9),
				(6,'Dr. Sneha Shah','Pet Surgeon',7),
				(7,'Dr. Vijay Kale','Veterinary Doctor',11),
				(8,'Dr. Pooja Patil','Animal Physician',5),
				(9,'Dr. Akshay More','Pet Specialist',8),
				(10,'Dr. Kiran Desai','Veterinary Surgeon',13),
				(11,'Dr. Anjali Pawar','Pet Doctor',6),
				(12,'Dr. Sagar Shinde','Animal Specialist',10),
				(13,'Dr. Nikhil Patil','Veterinary Doctor',7),
				(14,'Dr. Riya Sharma','Pet Surgeon',9),
				(15,'Dr. Aditya Joshi','Animal Physician',4),
				(16,'Dr. Komal Desai','Veterinary Doctor',8),
				(17,'Dr. Manish Kale','Pet Specialist',12),
				(18,'Dr. Snehal Shah','Veterinary Surgeon',14),
				(19,'Dr. Rajesh Patil','Animal Doctor',6),
				(20,'Dr. Meena Kulkarni','Pet Physician',5);
                
-- ==================================================================================================== 
-- Step 5: Isert 20 record in Table Appoinments
-- ==================================================================================================== 

	INSERT INTO Appoinments VALUES
				(1,1,1,'2026-01-05','Completed'),
				(2,2,2,'2026-01-10','Completed'),
				(3,3,3,'2026-01-15','Pending'),
				(4,4,4,'2026-01-20','Completed'),
				(5,5,5,'2026-02-01','Cancelled'),
				(6,6,6,'2026-02-05','Completed'),
				(7,7,7,'2026-02-10','Pending'),
				(8,8,8,'2026-02-15','Completed'),
				(9,9,9,'2026-03-01','Completed'),
				(10,10,10,'2026-03-05','Pending'),
				(11,11,11,'2026-03-10','Completed'),
				(12,12,12,'2026-03-15','Cancelled'),
				(13,13,13,'2026-04-01','Completed'),
				(14,14,14,'2026-04-05','Pending'),
				(15,15,15,'2026-04-10','Completed'),
				(16,16,16,'2026-05-01','Completed'),
				(17,17,17,'2026-05-05','Pending'),
				(18,18,18,'2026-05-10','Completed'),
				(19,19,19,'2026-06-01','Cancelled'),
				(20,20,20,'2026-06-05','Completed'),
				(21,1,5,'2026-06-10','Pending'),
				(22,2,6,'2026-06-15','Completed'),
				(23,3,7,'2026-07-01','Completed'),
				(24,4,8,'2026-07-05','Cancelled'),
				(25,5,9,'2026-07-10','Pending'),
				(26,6,10,'2026-07-15','Completed'),
				(27,7,11,'2026-08-01','Completed'),
				(28,8,12,'2026-08-05','Pending'),
				(29,9,13,'2026-08-10','Completed'),
				(30,10,14,'2026-08-15','Cancelled');

-- ==================================================================================================== 
-- SAMPLE QUERIES (run separately) Basic + SELECT + WHERE + AND + OR + NOT + UPDATE + DELETE + ALTER
-- ====================================================================================================
-- Easy
-- ====================================================================================================
-- 1.Display all owners.             
                
		SELECT * FROM OWNER;
        
 -- ====================================================================================================               
-- 2.Display all pets.

		SELECT * FROM Pets;
        
-- ====================================================================================================
-- 3.Display all doctors.
		
        SELECT * FROM Doctors;

-- ====================================================================================================
-- 4.Display All Apponments

		SELECT * FROM Appoinments;
  
  -- ====================================================================================================
-- 5.Display only OwnerName and City.

		SELECT Owner_Name,City From Owner;
        
-- ====================================================================================================
-- 6.Display PetName and Age.
	
    SELECT Pet_Name,Age FROM Pets;
    
-- ====================================================================================================
-- 7.Display doctors having more than 5 years of experience.
	
    SELECT * FROM DOCTORS WHERE EXPERIANCE > 5;
    
-- ====================================================================================================
-- 8.Display pets whose age is greater than 3.

	SELECT * FROM PETS WHERE Age > 3;
    
-- ====================================================================================================
-- 9.Display owners from Pune.

    SELECT Owner_Name AS OwnerFromPune
    FROM OWNER WHERE City = 'Pune';

-- ====================================================================================================
-- 10.Display appointments whose status is 'Pending'.
	
    SELECT * FROM APPOINMENTS WHERE Status = 'Pending';
    
-- ====================================================================================================
-- 11.Display pets whose type is 'Dog'.

	SELECT * FROM PETS WHERE Pet_Type = "Dog";
    
-- ====================================================================================================
-- 12.Display female owners.

	SELECT * FROM OWNER WHERE Gender = "Female";
    
-- ====================================================================================================
-- 13.Display owners who are NOT from Mumbai.

	SELECT * FROM OWNER WHERE City <> 'Mumbai';
    
-- ====================================================================================================
-- 14.Display pets whose age is NOT equal to 2.

	SELECT * FROM Pets WHERE Age <> 2;
    
-- ====================================================================================================
-- 15.Display doctors whose specialization is NOT 'Pet Specialist'.

	SELECT * FROM Doctors WHERE Specialization <> "Pet Specialist";
    
-- ====================================================================================================
-- Medium
-- ====================================================================================================
-- 16.Display Owners from Pune AND Gender='Female'.

		SELECT * FROM Owner WHERE City = "Pune" AND Gender = "Female";
        
-- ====================================================================================================
-- 17.Display pets whose age is greater than 2 AND type is 'Dog'.

	SELECT * FROM Pets WHERE Age > 2 AND Pet_Type = "Dog";
    
-- ====================================================================================================
-- 18.Display doctors having more than 10 years experience AND specialization='Pet Surgeon'.

	SELECT * FROM Doctors WHERE Experiance > 10 AND Specialization = "Pet Surgeon";
    
-- ====================================================================================================
-- 19.Display appointments whose status='Completed' AND DoctorID=3.

	SELECT * FROM Appoinments WHERE Status = "Completed" AND Doctor_Id = 3;
    
-- ====================================================================================================
-- 20.Display owners from Pune OR Mumbai.

	SELECT * FROM Owner WHERE City = "Pune" OR City = "Mumbai";
    
-- ====================================================================================================
-- 21.Display pets whose type='Dog' OR type='Cat'.

	SELECT * FROM Pets WHERE Pet_Type = "Dog" OR Pet_Type = "Cat";
    
-- ====================================================================================================
-- 22.Display doctors whose specialization='Veterinary Surgeon' OR experience>8.

	SELECT * FROM Doctors WHERE Specialization = "Veterinary Surgeon" OR Experiance > 8;
    
-- ====================================================================================================
-- 23.Display appointments which are Pending OR Cancelled.

	SELECT * FROM Appoinments WHERE Status = "Pending" OR Status = "Cancelled";
    
-- ====================================================================================================
-- 24.Display owners NOT from Pune AND Gender='Male'.

	SELECT * FROM Owner WHERE City <> "Pune" AND Gender = "Male";
    
-- ====================================================================================================
-- 25.Display pets whose age is NOT greater than 5.

	SELECT * FROM Pets WHERE Age <= 5;
    
-- OR
    
    SELECT * FROM Pets WHERE NOT Age > 5;
	
-- ====================================================================================================
-- 26.Display doctors NOT having experience less than 3.

	SELECT * FROM Doctors WHERE NOT Experiance < 3;
    
-- OR 

	SELECT * FROM Doctors WHERE Experiance > 3;
    
-- ====================================================================================================
-- 27.Display appointments NOT having status='Completed'.

	SELECT * FROM Appoinments WHERE NOT Status = "Completed";
    
-- OR

	SELECT * FROM Appoinments WHERE Status <> "Completed";
	
-- ====================================================================================================
-- 28.Display owners from Kolhapur AND Phone starts with '98'.

	SELECT * FROM Owner WHERE City = "Kolhapur" AND Phone LIKE "98%";
    
-- ====================================================================================================
-- 29.Display pets whose age>2 OR OwnerID=5.

	SELECT * FROM Pets WHERE Age > 2 OR Owner_ID = 5;
    
-- ====================================================================================================
-- 30.Display doctors having experience>8 OR specialization='Pet Doctor'.

	SELECT * FROM Doctors WHERE Experiance > 8 OR Specialization = "Pet Doctor";
    
-- ====================================================================================================
-- 31.Display pets whose type is Dog AND age<5.

	SELECT * FROM Pets WHERE Pet_Type <> "Dog" AND Age < 5;
    
-- ====================================================================================================
-- 32.Display female owners from Nashik.

	SELECT * FROM Owner WHERE Gender = "Female" And City = "Nashik";
    
-- ====================================================================================================
-- 33.Display appointments whose DoctorID=2 OR PetID=7.

	SELECT * FROM Appoinments WHERE Doctor_Id = 2 OR Pet_ID = 7;
    
-- ====================================================================================================
-- 34.Display owners NOT from Satara.

	SELECT * FROM Owner WHERE City <> "Satara";
    
-- ====================================================================================================
-- 35.Display pets NOT belonging to OwnerID=10.

	SELECT * FROM Pets WHERE Owner_ID <> 10;
    
-- ====================================================================================================
-- Hard 
-- ====================================================================================================
-- 36.Update City='Pune' where OwnerID=8.

    UPDATE Owner
    Set City = "Pune" Where Owner_ID = 8;
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 37.Update Phone for OwnerID=5.

	UPDATE Owner 
    SET Phone = "2545474847" WHERE Owner_ID = 5;
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 38.Update Doctor specialization to 'Orthopedic' where DoctorID=4.

	UPDATE Doctors
    SET Specialization = "Orthopedic" WHERE Doctor_ID = 4;
    
    SELECT * FROM Doctors;
    
-- ====================================================================================================
-- 39.Update Pet age to 6 where PetID=9.

	UPDATE Pets
    SET Age = 6 WHERE Pet_ID = 9;
    
    SELECT * FROM Pets;
    
-- ====================================================================================================
-- 40.Update Appointment status='Completed' where AppointmentID=12.

	UPDATE Appoinments 
    SET Status = "Completed" WHERE Appoinment_ID = 12;
    
    SELECT * FROM Appoinments;
    
-- ====================================================================================================
-- 41.Update PetType='Rabbit' where Breed='Persian'.

	UPDATE Pets 
    SET Pet_Type = "Rabbit" WHERE Breed = "Persian";
    
	SELECT * FROM Pets;
     
-- ====================================================================================================
-- 42.Update City='Kolhapur' where Gender='Female' AND City='Pune'.

	UPDATE Owner 
    SET City = "Kolhapur" WHERE Gender = "Female" AND City = "Pune";
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 43.Update Experience=Experience+2 where specialization='Animal Physician'.

	UPDATE Doctors
    SET Experiance = Experiance + 2 WHERE Specialization = "Animal Physician";
    
	SELECT * FROM Doctors;
    
-- ====================================================================================================
-- 44.Delete owners whose city='Nagpur'.

	SELECT * FROM Owner WHERE City = "Nagpur";
    SELECT * FROM Pets;
    SELECT * FROM Appoinments;
	SELECT * FROM Pets WHERE Owner_ID IN (5 ,15);
    
	DELETE FROM Appoinments				-- Cannot delete Owner directly because Pets table has a Foreign Key (Owner_ID).
    WHERE Pet_ID IN (5 , 15);			-- First delete related records from child tables, then delete the Owner.
    
    DELETE From Pets 
    WHERE Owner_Id IN (5 ,15);
    
    DELETE FROM Owner 
    WHERE City = "Nagpur";
    
    SELECT * FROM Pets;

-- ====================================================================================================
-- 45.Delete pets whose age<1.

	DELETE FROM Pets
    WHERE Age < 1;
    
    SELECT * FROM Pets;
    
-- ====================================================================================================
-- 46.Delete appointments having status='Cancelled'.

	DELETE FROM Appoinments
    WHERE Status = "Cancelled";
    
    SELECT * FROM Appoinments;
-- ====================================================================================================
-- 47.Delete doctors having experience<2.

	DELETE FROM Doctors
    WHERE Experiance < 2;
    
    SELECT * FROM Doctors;
    
-- ====================================================================================================
-- 48.Delete pets whose type='Bird' AND age=1.
	
	SELECT * FROM Pets; 										-- Delete child records first, then parent records.
	SELECT * FROM Appoinments WHERE Pet_ID = 1;
     
	DELETE FROM Appoinments 
	WHERE Pet_ID = 4;
    
	DELETE FROM Pets
    WHERE Pet_Type = "Bird" AND Age = 1;
    
    SELECT * FROM Pets WHERE Pet_Type = "Bird" AND Age = 1;
 
-- ====================================================================================================
-- 49.Delete owners who is from Pune AND Phone start with 3.

	DELETE FROM Owner 
    WHERE City = "Pune" AND Phone LIKE "3%";
    
    SELECT * FROM Owner WHERE City = "Pune" AND Phone LIKE "3%";
    
-- ====================================================================================================
-- 50.Delete appointments where DoctorID=5 AND status='Pending'.

	DELETE FROM Appoinments 
    WHERE Doctor_ID = 5 AND Status = "Pending";
    
    SELECT * FROM Appoinments WHERE Doctor_ID = 5 AND Status = "Pending";
    
-- ====================================================================================================
-- Challenge Questions
-- ====================================================================================================
-- 51.Add a new column Email to Owners table.

	ALTER TABLE Owner
    ADD Column Email VARCHAR (200);
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 52.Add a column PetColor in Pets.

	ALTER TABLE Pets
    ADD Column PetColor VARCHAR(50);
    
    SELECT * FROM Pets;
    
-- ====================================================================================================
-- 53.Rename column Phone to MobileNumber.

	ALTER TABLE Owner
    RENAME Column Phone TO Mobilenumber;
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 54.Increase MobileNumber column size.

	ALTER TABLE Owner
    MODIFY COLUMN Mobilenumber VARCHAR(12);
    
-- ====================================================================================================
-- 55.Add a column Fees in Doctors.

	ALTER TABLE Doctors
    ADD COLUMN Fees INT;
    
    SELECT * FROM Doctors;
    
-- ====================================================================================================
-- 56.Delete Fees column.

	ALTER TABLE Doctors
    DROP COLUMN Fees;
    
    SELECT * FROM Doctors;
    
-- ====================================================================================================
-- 57.Rename table Doctors to VeterinaryDoctors.

	ALTER TABLE Doctors
    RENAME TO VeterinaryDoctors;
    
    SHOW TABLES;
    
-- ====================================================================================================
-- 58.Change PetColor datatype.

	ALTER TABLE Pets
    MODIFY COLUMN PetColor CHAR(100) ;
    
    DESC Pets;
    
-- ====================================================================================================
-- 59.Add a column AppointmentTime.

	ALTER TABLE Appoinments
    ADD COLUMN AppoinmentTime TIME;
    
    SELECT * FROM Appoinments;
    
-- ====================================================================================================
-- 60.Drop AppointmentTime column.

	ALTER TABLE Appoinments
    DROP COLUMN AppoinmentTime;
    
    SELECT * FROM Appoinments;
    
-- ====================================================================================================
-- Challenge Questions (61-70)
-- ====================================================================================================
-- 61. Display all owners whose city is 'Kolhapur'.
	
    SELECT * FROM Owner
    WHERE City = "Kolhapur";
	
-- ====================================================================================================
-- 62. Display pets whose age is greater than 5.

	SELECT * FROM Pets
    WHERE Age > 5;
    
-- ====================================================================================================
-- 63. Display veterinarydoctors whose specialization is 'Orthopedic'.

	SELECT * FROM veterinarydoctors
	WHERE Specialization = "Orthopedic";
	
-- ====================================================================================================
-- 64. Display appointments whose status is 'Completed'.

	SELECT * FROM Appoinments
    WHERE Status = "Completed";
    
-- ====================================================================================================
-- 65. Display owners whose gender is 'Female' AND city is 'Pune'.

	SELECT * FROM Owner
    WHERE Gender = "Female";
    
-- ====================================================================================================
-- 66. Display pets whose type is 'Dog' OR age is greater than 7.

	SELECT * FROM Pets
    WHERE Pet_Type = "Dog" OR Age > 7;
    
-- ====================================================================================================
-- 67. Display owners whose city is NOT 'Mumbai'.

	SELECT * FROM Owner
    WHERE City <> "Mumbai";
    
-- ====================================================================================================
-- 68. Display pets whose breed is 'Labrador' AND age is less than 5.

	SELECT * FROM Pets
    WHERE Breed = "Labrador" AND Age < 5;
    
-- ====================================================================================================
-- 69. Display appointments whose status is 'Pending' OR Visit_Date is after '2025-07-01'.

	SELECT * FROM Appoinments 
    WHERE Status = "Pending" OR Visit_Date > "2025-07-01";
    
-- ====================================================================================================
-- 70. Display doctors whose experience is greater than 5 years.

	SELECT * FROM Veterinarydoctors
    WHERE Experiance > 5;
    
-- ====================================================================================================
-- Challenge Questions 
-- ====================================================================================================
-- 71. Update the city of owner 'Rahul Patil' to 'Satara'.

	UPDATE Owner
    SET City = "Satara"
    WHERE Owner_Name = "Rahul Patil";
    
    SELECT * FROM Owner;
    
-- ====================================================================================================
-- 72. Increase the age of pet 'Bruno' by 1 year.

	UPDATE Pets
    SET Age = Age + 1
    WHERE Pet_Name = "Bruno";
    
    SELECT * FROM Pets;
    
-- ====================================================================================================
-- 73. Change appointment status from 'Pending' to 'Completed'.

	UPDATE Appoinments
    SET Status = "Complete"
    WHERE Status = "Pending";
    
    SELECT * FROM Appoinments;
    
-- ====================================================================================================
-- 74. Delete owners whose city is 'Satara'.
--     (Observe the Foreign Key error and explain why it occurs.)

	SELECT * FROM Owner WHERE City = "Satara";      -- Child record must be deleted first because of the Foreign Key relationship.
    SELECT * FROM Pets WHERE Owner_ID = 1;
    
    DELETE FROM Appoinments
    WHERE Pet_ID = 1;
    
    DELETE FROM Pets
    WHERE Owner_ID = 1;
    
    DELETE FROM Owner 
    WHERE City = "Satara";
    
-- ====================================================================================================
-- 75. Delete pets whose age is greater than 12.

	DELETE FROM Pets
    WHERE Age > 12;
    
-- ====================================================================================================
-- 76. Display pets whose name starts with 'B'.

	SELECT * FROM Pets
    WHERE Pet_Name LIKE "B%";
    
-- ====================================================================================================
-- 77. Display owners whose MobileNumber starts with '98'.

	SELECT * FROM Owner 
    WHERE Mobilenumber Like "98%";
    
-- ====================================================================================================
-- 78. Display doctors whose name ends with 'kar'.

	SELECT * FROM veterinarydoctors
    WHERE Doctor_Name LIKE "%r";
    
-- ====================================================================================================
-- 79. Display pets whose name contains 'oo'.

	SELECT * FROM Pets
    WHERE Pet_Name LIKE "%a";
-- ====================================================================================================
-- 80. Display appointments between '2026-04-01' and '2026-05-31'.

	SELECT * FROM Appoinments
    WHERE Visit_Date BETWEEN "2026-04-01" AND "2026-05-31";
    
-- ====================================================================================================
-- ====================================================================================================
-- Challenge Questions (81-90)
-- ====================================================================================================
-- 81. Display all owners sorted by Owner_Name in ascending order.

	SELECT Owner_Name FROM Owner
	ORDER BY Owner_Name ASC;
    
-- ====================================================================================================
-- 82. Display all pets sorted by Age in descending order.

	SELECT * FROM Pets
    ORDER BY Age DESC;
    
-- ====================================================================================================
-- 83. Display all appointments sorted by Visit_Date.

	SELECT * FROM Appoinments 
    ORDER BY Visit_Date ;
    
-- ====================================================================================================
-- 84. Display unique cities from the Owner table.

	SELECT DISTINCT City FROM Owner;
    
-- ====================================================================================================
-- 85. Display unique pet types from the Pets table.

	SELECT DISTINCT Pet_Type From Pets;
    
-- ====================================================================================================
-- 86. Display unique appointment status from the Appoinments table.

	SELECT DISTINCT Status From Appoinments;
    
-- ====================================================================================================
-- 87. Display the first 5 records from the Owner table.

	SELECT * FROM Owner
    LIMIT 5;
    
-- ====================================================================================================
-- 88. Display the first 10 records from the Pets table.

	SELECT * FROM Pets
    LIMIT 10;
    
-- ====================================================================================================
-- 89. Display the top 3 oldest pets.

	SELECT * FROM Pets
    ORDER BY Age DESC
    LIMIT 3;
    
-- ====================================================================================================
-- 90. Display the first 5 appointments sorted by Visit_Date.

	SELECT * FROM Appoinments
    ORDER BY Visit_Date
    LIMIT 5;
    
-- ====================================================================================================
-- ====================================================================================================
-- Challenge Questions (91-100)
-- ====================================================================================================
-- 91. Display all female owners from Kolhapur sorted by Owner_Name in ascending order.

	SELECT * FROM Owner 
    WHERE Gender = "Female" AND City = "Kolhapur"
    ORDER BY Owner_Name ASC;
    
-- ====================================================================================================
-- 92. Display the first 5 dogs sorted by Age in descending order.

	SELECT * FROM Pets
    WHERE Pet_Type = "Dog"
    ORDER BY Age DESC
    LIMIT 5;
    
-- ====================================================================================================
-- 93. Display unique cities except Mumbai.

	SELECT DISTINCT City FROM Owner
    WHERE City <> "Mumbai";
    
-- ====================================================================================================
-- 94. Display the top 3 youngest pets.

	SELECT * FROM Pets
    ORDER BY Age 
    LIMIT 3;
    
-- ====================================================================================================
-- 95. Display appointments whose status is 'Completed' sorted by Visit_Date.

	SELECT * FROM Appoinments
    WHERE Status = "Completed"
    ORDER BY Visit_Date;
    
-- ====================================================================================================
-- 96. Display owners whose MobileNumber starts with '98' OR city is 'Kolhapur'.

	SELECT * FROM Owner
    WHERE Mobilenumber LIKE "98%" OR City = "Kolhapur";
    
-- ====================================================================================================
-- 97. Display pets whose age is NOT greater than 5 sorted by Pet_Name.

	SELECT * FROM Pets
    WHERE Age <= 5
    ORDER BY Pet_Name;
    
-- ====================================================================================================
-- 98. Display unique pet breeds sorted alphabetically.

	SELECT DISTINCT Breed 
    FROM Pets
    ORDER BY BREED;
    
-- ====================================================================================================
-- 99. Display the first 5 owners whose city is NOT 'Pune'.

	SELECT * FROM Owner
    WHERE City <> "Pune"
    LIMIT 5;
    
-- ====================================================================================================
-- 100. Display the top 5 oldest pets whose Pet_Type is 'Dog'.

	SELECT * FROM Pets
    WHERE Pet_Type = "Dog"
    ORDER BY Age DESC
    LIMIT 5;
    
-- ====================================================================================================