-- ============================================================================
-- Practice   : DQL 
-- Author     : Priyanka More
-- Date       : 01-07-2026
-- ============================================================================
	CREATE DATABASE EcommerceDB;
    USE EcommerceDB;
		CREATE TABLE CUSTOMERS
			(
			  CustomerID INT,
			  CustomerName VARCHAR(50),
              Age INT,
              Gender CHAR(1),
              City VARCHAR(50),
              Membership VARCHAR(50),
              ToatalPurchase DECIMAL(10,2),
              RegistrationDate DATE,
              Email VARCHAR(80)
			);
            
		INSERT INTO CUSTOMERS VALUES
				(101,'Amit Sharma',20,'Male','Pune','Gold',45000,'2025-01-15','amit@gmail.com'),
                (102,'Priya Patel',30,'Female','Mumbai','Silver',28000,'2025-02-10','priya@gmail.com'),
                (103,'Rahul Verma',35,'Male','Delhi','Gold',62000,'2025-03-05','rahul@gmail.com'),
                (104,'Sneha Joshi',27,'Female','Pune','Platinum',85000,'2025-01-28','sneha@gmail.com'),
                (105,'Rohan Singh',40,'Male','Nagpur','Silver',22000,'2025-04-11','rohan@gmail.com'),
                (106,'Neha More',24,'Female','Nashik','Gold',39000,'2025-05-20','neha@gmail.com'),
                (107,'Vikas Patil',32,'Male','Pune','Silver',18000,'2025-06-01','vikas@gmail.com'),
                (108,'Meera Shah',29,'Female','Mumbai','Platinum',95000,'2025-02-25','meera@gmail.com'),
                (109,'Yash Kulkarni',45,'Male','Aurangabad','Gold',72000,'2025-03-30','yash@gmail.com'),
                (110,'Isha Desai',26,'Female','Kolhapur','Silver',31000,'2025-04-18','isha@gmail.com'),
                (111,'Karan Mehta',38,'Male','Pune','Gold',68000,'2025-05-05','karan@gmail.com'),
                (112,'Sara Khan',31,'Female','Mumbai','Platinum',91000,'2025-06-12','sara@gmail.com');
                
	SELECT * FROM CUSTOMERS;
                
-- ============================================================================
-- WHERE
-- ============================================================================
-- ============================================================================
-- Q1. Display customers from Pune.
-- ============================================================================

		SELECT *  FROM CUSTOMERS
        WHERE City = 'Pune';

-- ============================================================================
-- Q2. Display Female customers.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Gender = 'Female';

-- ============================================================================
-- Q3. Display customers whose Membership is Gold.
-- ============================================================================

		SELECT * FROM CUSTOMERS
		WHERE Membership = 'Gold';

-- ============================================================================
-- Q4. Display customers whose Age is greater than 30.
-- ============================================================================
		
        SELECT * FROM CUSTOMERS
        WHERE Age > 30;
				
-- ============================================================================
-- Q5. Display customers from Mumbai.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE City = 'Mumbai';

-- ============================================================================
-- Q6. Display customers whose TotalPurchase is greater than 50000.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE ToatalPurchase > 50000;

-- ============================================================================
-- Q7. Display customers whose Age is between 25 and 35.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Age between 25 and 35;

-- ============================================================================
-- Q8. Display customers registered after '2025-03-01'.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE RegistrationDate > '2025-03-01';

-- ============================================================================
-- Q9. Display Male customers from Pune.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Gender = 'Male';

-- ============================================================================
-- Q10. Display Platinum members.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Membership = 'Platinum';

-- ============================================================================
-- Q11. Display Gold members whose TotalPurchase is greater than 60000.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Membership = 'Gold' AND TotalPurchase > 60000;

-- ============================================================================
-- Q12. Display Female customers from Mumbai whose Membership is Platinum.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Gender = 'Female' AND City = 'Mumbai' AND Membership = 'Platinum';

-- ============================================================================
-- Q13. Display customers whose Age is greater than 25 and TotalPurchase is less
-- than 50000.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Age > 25 AND TotalPurchase < 50000;
        
-- ============================================================================
-- Q14. Display customers from Pune or Mumbai.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE City = 'Pune' OR City = 'Mumbai';

-- ============================================================================
-- Q15. Display customers whose Membership is Gold and City is Pune.
-- ============================================================================

		SELECT * FROM CUSTOMERS
        WHERE Membership = 'Gold' AND City = 'Pune'; 