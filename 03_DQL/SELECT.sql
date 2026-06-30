-- ============================================================================
-- Practice   : DQL 
-- Author     : Priyanka More
-- Date       : 30-06-2026
-- ============================================================================
	CREATE DATABASE SalesDB;
	USE SalesDB;
    
		CREATE TABLE Orders
				(
					OrderID INT,
					CustomerName VARCHAR(50),
					ProductName VARCHAR(50),
					Category VARCHAR(30),
					Quantity INT,
					Price DECIMAL(10,2),
					OrderDate DATE,
					City VARCHAR(30),
					SalesPerson VARCHAR(50),
					PaymentMethod VARCHAR(20)
				);
		
        INSERT INTO Orders VALUES
				(101,'Amit Patil','Laptop','Electronics',1,65000,'2026-01-10','Pune','Rahul','UPI'),
				(102,'Sneha More','Mouse','Electronics',2,1200,'2026-01-12','Mumbai','Priya','Card'),
				(103,'Rohan Shah','Office Chair','Furniture',1,8500,'2026-01-15','Nashik','Rahul','Cash'),
				(104,'Neha Joshi','Notebook','Stationery',10,500,'2026-01-18','Pune','Amit','UPI'),
				(105,'Karan Singh','Keyboard','Electronics',1,2500,'2026-01-20','Nagpur','Priya','Card'),
				(106,'Pooja Kulkarni','Desk','Furniture',1,12000,'2026-01-22','Mumbai','Rahul','UPI'),
				(107,'Vikas Sharma','Printer','Electronics',1,15000,'2026-01-24','Pune','Amit','Cash'),
				(108,'Meera Desai','Pen','Stationery',20,400,'2026-01-26','Aurangabad','Priya','UPI'),
				(109,'Aditya Pawar','Monitor','Electronics',2,30000,'2026-01-28','Kolhapur','Rahul','Card'),
				(110,'Isha Patil','Bookshelf','Furniture',1,9500,'2026-01-30','Pune','Amit','Cash'),
				(111,'Yash Kulkarni','Headphones','Electronics',2,4500,'2026-02-01','Mumbai','Priya','UPI'),
				(112,'Sara Shaikh','Marker','Stationery',15,750,'2026-02-03','Nashik','Rahul','Card');
-- ============================================================================
-- SELECT
-- ============================================================================         
-- ============================================================================
-- Q1. Display all records from the Orders table.
-- ============================================================================
		SELECT * FROM Orders;
-- ============================================================================
-- Q2. Display only CustomerName.
-- ============================================================================
		SELECT CustomerName
        FROM Orders;
-- ============================================================================
-- Q3. Display ProductName and Price.
-- ============================================================================
		SELECT ProductName,Price
        FROM Orders;
-- ============================================================================
-- Q4. Display OrderID, CustomerName and City.
-- ============================================================================
		SELECT OrderID,CustomerName,City
        FROM Orders;
-- ============================================================================
-- Q5. Display SalesPerson and PaymentMethod.
-- ============================================================================
		SELECT SalesPerson,PaymentMethod
        From Orders;
-- ============================================================================
-- Q6. Display CustomerName, ProductName and Quantity.
-- ============================================================================
		SELECT CustomerName,ProductName,Quantity
        FROM Orders;
-- ============================================================================
-- Q7. Display ProductName, Category, Price and OrderDate.
-- ============================================================================
		SELECT ProductName,Category,Price,OrderDate
        FROM Orders;
-- ============================================================================
-- Q8. Display CustomerName, City, PaymentMethod and SalesPerson.
-- ============================================================================
		SELECT CustomerName,City,PaymentMethod,SalesPerson
        FROM Orders;
-- ============================================================================
-- Q9. Display OrderID, ProductName, Quantity, Price and PaymentMethod.
-- ============================================================================
		SELECT OrderID,ProductName,Quantity,Price,PaymentMethod
        FROM Orders;
-- ============================================================================
-- Q10. Display CustomerName, ProductName, Category, City and OrderDate.
-- ============================================================================
		SELECT CustomerName,ProductName,Category,City,OrderDate
        FROM Orders;
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                