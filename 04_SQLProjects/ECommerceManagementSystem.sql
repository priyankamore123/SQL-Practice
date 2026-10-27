-- ====================================================================================================
-- MySQL Mini Project "E-Commerce Management System"
-- Auther Name    : Priyanka More 
-- Date            : 24-10-2026
-- ====================================================================================================
-- ====================================================================================================
-- Step 1: Create Database 
-- ==================================================================================================== 

	CREATE DATABASE OnlineShoppingDB;
    
-- ==================================================================================================== 

	USE OnlineShoppingDB;
	SHOW DATABASES;
    
-- ==================================================================================================== 
-- Step 2: Create Table Customers
-- ==================================================================================================== 

	CREATE TABLE Customers (
		Customer_ID INT PRIMARY KEY,
        Customer_Name VARCHAR(100),
        Gender VARCHAR(10),
        Email VARCHAR(100) UNIQUE,
        Mobile_Number VARCHAR(15),
        City VARCHAR(100),
        Registration_Date DATE
        );
        
-- ==================================================================================================== 
-- Step 3: Create Table Categories
-- ==================================================================================================== 

	CREATE TABLE Categories (
		Category_ID INT PRIMARY KEY,
        Category_Name VARCHAR(100) UNIQUE,
        Description VARCHAR(200)
		);
        
-- ==================================================================================================== 
-- Step 4: Create Table Products
-- ==================================================================================================== 

	CREATE TABLE Products (
		Product_ID INT PRIMARY KEY,
        Product_Name VARCHAR(100),
        Category_ID INT,
        Brand VARCHAR(100),
        Price DECIMAL(10,2),
        Stock_Quantity INT,
        Product_Status VARCHAR(50),
        
        FOREIGN KEY (Category_ID)
        REFERENCES Categories(Category_ID)
		);
-- ==================================================================================================== 
-- Step 5: Create Table Customer Oreders
-- ==================================================================================================== 

	CREATE TABLE Customer_Orders (
		Order_ID INT PRIMARY KEY,
		Customer_ID	INT,	
		Order_Date DATE,	
		Order_Status VARCHAR(50),	
		Total_Amount DECIMAL(10,2),
        
        FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
		);
     
-- ==================================================================================================== 
-- Step 6: Create Table Oreder Items
-- ==================================================================================================== 
	
    CREATE TABLE Order_Items (
		Item_ID INT PRIMARY KEY,
        Order_ID INT,
        Product_ID INT,
        Quantity INT,
        Unit_Price DECIMAL(10,2),
        Subtotal DECIMAL(10,2),
        
        FOREIGN KEY (Order_ID)
        REFERENCES Customer_Orders(Order_ID),
        
        FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID)
		);   
        
-- ==================================================================================================== 
-- Step 7: Create Table Payments
-- ==================================================================================================== 
	
		CREATE TABLE Payments (
			Payment_ID INT PRIMARY KEY,
			Order_ID INT,
			Payment_Date DATE,
			Payment_Method VARCHAR(50),
			Amount DECIMAL(10,2),
			Payment_Status VARCHAR(50),
            
            FOREIGN KEY (Order_ID)
            REFERENCES Customer_Orders(Order_ID)
			);			
            
-- ==================================================================================================== 
-- Step 8: Show Tables 
-- ==================================================================================================== 
	
	SHOW TABLES;
    
	DESC Customers;
    DESC Categories;
    DESC Products;
    DESC Customer_Orders;
    DESC Order_Items;
    DESC Payments;
    
-- ==================================================================================================== 
-- Step 9: Insert Data In Tables
-- ==================================================================================================== 
	
    INSERT INTO Customers Values
		(101,'Akshay Sharma','Male','Akshay101@gmail.com','9823898990','Pune','2026-10-20'),
		(102, 'Priya More', 'Female', 'priya102@gmail.com', '9823898102', 'Pune', '2026-01-05'),
		(103, 'Rahul Patil', 'Male', 'rahul103@gmail.com', '9823898103', 'Mumbai', '2026-01-08'),
		(104, 'Sneha Joshi', 'Female', 'sneha104@gmail.com', '9823898104', 'Nashik', '2026-01-12'),
		(105, 'Amit Shah', 'Male', 'amit105@gmail.com', '9823898105', 'Kolhapur', '2026-01-15'),
		(106, 'Neha Kulkarni', 'Female', 'neha106@gmail.com', '9823898106', 'Pune', '2026-01-20'),
		(107, 'Rohan Deshmukh', 'Male', 'rohan107@gmail.com', '9823898107', 'Nagpur', '2026-01-25'),
		(108, 'Pooja Jadhav', 'Female', 'pooja108@gmail.com', '9823898108', 'Mumbai', '2026-02-02'),
		(109, 'Sagar Pawar', 'Male', 'sagar109@gmail.com', '9823898109', 'Satara', '2026-02-06'),
		(110, 'Kavita More', 'Female', 'kavita110@gmail.com', '9823898110', 'Pune', '2026-02-10'),
		(111, 'Akash Shinde', 'Male', 'akash111@gmail.com', '9823898111', 'Sangli', '2026-02-14'),
		(112, 'Anjali Patil', 'Female', 'anjali112@gmail.com', '9823898112', 'Nashik', '2026-02-18'),
		(113, 'Vikas Pawar', 'Male', 'vikas113@gmail.com', '9823898113', 'Kolhapur', '2026-02-22'),
		(114, 'Meera Joshi', 'Female', 'meera114@gmail.com', '9823898114', 'Mumbai', '2026-03-01'),
		(115, 'Kunal Shah', 'Male', 'kunal115@gmail.com', '9823898115', 'Pune', '2026-03-05'),
		(116, 'Rutuja More', 'Female', 'rutuja116@gmail.com', '9823898116', 'Aurangabad', '2026-03-09'),
		(117, 'Nikhil Patil', 'Male', 'nikhil117@gmail.com', '9823898117', 'Nagpur', '2026-03-13'),
		(118, 'Swati Kulkarni', 'Female', 'swati118@gmail.com', '9823898118', 'Pune', '2026-03-17'),
		(119, 'Prasad Jadhav', 'Male', 'prasad119@gmail.com', '9823898119', 'Satara', '2026-03-21'),
		(120, 'Isha Deshmukh', 'Female', 'isha120@gmail.com', '9823898120', 'Mumbai', '2026-03-25'),
		(121, 'Omkar Shinde', 'Male', 'omkar121@gmail.com', '9823898121', 'Sangli', '2026-04-02'),
		(122, 'Aarti Pawar', 'Female', 'aarti122@gmail.com', '9823898122', 'Pune', '2026-04-06'),
		(123, 'Harsh Shah', 'Male', 'harsh123@gmail.com', '9823898123', 'Nashik', '2026-04-10'),
		(124, 'Mrunal Joshi', 'Female', 'mrunal124@gmail.com', '9823898124', 'Kolhapur', '2026-04-14'),
		(125, 'Yash More', 'Male', 'yash125@gmail.com', '9823898125', 'Mumbai', '2026-04-18'),
		(126, 'Sayali Patil', 'Female', 'sayali126@gmail.com', '9823898126', 'Pune', '2026-04-22'),
		(127, 'Tejas Kulkarni', 'Male', 'tejas127@gmail.com', '9823898127', 'Nagpur', '2026-04-26'),
		(128, 'Komal Jadhav', 'Female', 'komal128@gmail.com', '9823898128', 'Satara', '2026-05-02'),
		(129, 'Abhishek Pawar', 'Male', 'abhishek129@gmail.com', '9823898129', 'Sangli', '2026-05-06'),
		(130, 'Pallavi Shinde', 'Female', 'pallavi130@gmail.com', '9823898130', 'Pune', '2026-05-10');
        
-- ==================================================================================================== 
-- Step 10: Check Table Details
-- ==================================================================================================== 

		SELECT * FROM Customers;

-- ==================================================================================================== 

	INSERT INTO Categories VALUES
		(1, 'Electronics', 'Electronic devices and gadgets'),
		(2, 'Clothing', 'Mens and womens clothing'),
		(3, 'Footwear', 'Shoes sandals and slippers'),
		(4, 'Home Appliances', 'Appliances for household use'),
		(5, 'Books', 'Educational and general books'),
		(6, 'Beauty', 'Beauty and skincare products'),
		(7, 'Sports', 'Sports and fitness equipment'),
		(8, 'Accessories', 'Fashion and personal accessories'),
		(9, 'Furniture', 'Home and office furniture'),
		(10, 'Groceries', 'Daily food and grocery products');
        
		SELECT * FROM Categories;
    
-- ==================================================================================================== 

	INSERT INTO Products VALUES
		(201, 'Laptop', 1, 'HP', 55000.00, 15, 'Available'),
		(202, 'Smartphone', 1, 'Samsung', 25000.00, 30, 'Available'),
		(203, 'Wireless Mouse', 1, 'Logitech', 799.00, 50, 'Available'),
		(204, 'Bluetooth Speaker', 1, 'JBL', 2499.00, 20, 'Available'),
		(205, 'Mens T-Shirt', 2, 'Puma', 899.00, 40, 'Available'),
		(206, 'Womens Kurti', 2, 'Biba', 1299.00, 25, 'Available'),
		(207, 'Jeans', 2, 'Levis', 1999.00, 18, 'Available'),
		(208, 'Mens Sneakers', 3, 'Nike', 3499.00, 12, 'Available'),
		(209, 'Womens Sandals', 3, 'Bata', 1199.00, 22, 'Available'),
		(210, 'Running Shoes', 3, 'Adidas', 4299.00, 10, 'Available'),
		(211, 'Mixer Grinder', 4, 'Philips', 3499.00, 14, 'Available'),
		(212, 'Electric Kettle', 4, 'Prestige', 1299.00, 25, 'Available'),
		(213, 'Microwave Oven', 4, 'LG', 12500.00, 8, 'Available'),
		(214, 'SQL Programming Book', 5, 'BPB Publications', 650.00, 35, 'Available'),
		(215, 'Python Basics Book', 5, 'Pearson', 550.00, 28, 'Available'),
		(216, 'Data Analytics Book', 5, 'Wiley', 899.00, 20, 'Available'),
		(217, 'Face Wash', 6, 'Cetaphil', 399.00, 45, 'Available'),
		(218, 'Moisturizer', 6, 'Nivea', 299.00, 50, 'Available'),
		(219, 'Sunscreen', 6, 'Neutrogena', 599.00, 30, 'Available'),
		(220, 'Yoga Mat', 7, 'Boldfit', 799.00, 25, 'Available'),
		(221, 'Dumbbells', 7, 'Kore', 1499.00, 15, 'Available'),
		(222, 'Cricket Bat', 7, 'SG', 2499.00, 9, 'Available'),
		(223, 'Smart Watch', 8, 'Noise', 2999.00, 18, 'Available'),
		(224, 'Handbag', 8, 'Lavie', 1799.00, 20, 'Available'),
		(225, 'Sunglasses', 8, 'Fastrack', 999.00, 32, 'Available'),
		(226, 'Office Chair', 9, 'Green Soul', 6500.00, 7, 'Available'),
		(227, 'Study Table', 9, 'Wakefit', 4500.00, 11, 'Available'),
		(228, 'Bookshelf', 9, 'IKEA', 3200.00, 6, 'Available'),
		(229, 'Rice 5kg', 10, 'India Gate', 450.00, 40, 'Available'),
		(230, 'Cooking Oil 1L', 10, 'Fortune', 160.00, 55, 'Available');
        
        SELECT * FROM Products;
        
-- ==================================================================================================== 

	INSERT INTO Customer_Orders VALUES
		(301, 101, '2026-06-01', 'Delivered', 55000.00),
		(302, 102, '2026-06-02', 'Delivered', 25000.00),
		(303, 103, '2026-06-03', 'Processing', 1798.00),
		(304, 104, '2026-06-04', 'Shipped', 3499.00),
		(305, 105, '2026-06-05', 'Delivered', 1299.00),
		(306, 106, '2026-06-06', 'Cancelled', 1999.00),
		(307, 107, '2026-06-07', 'Delivered', 4299.00),
		(308, 108, '2026-06-08', 'Processing', 3499.00),
		(309, 109, '2026-06-09', 'Shipped', 650.00),
		(310, 110, '2026-06-10', 'Delivered', 899.00),
		(311, 111, '2026-06-11', 'Delivered', 2999.00),
		(312, 112, '2026-06-12', 'Processing', 1199.00),
		(313, 113, '2026-06-13', 'Cancelled', 2499.00),
		(314, 114, '2026-06-14', 'Delivered', 4500.00),
		(315, 115, '2026-06-15', 'Shipped', 12500.00),
		(316, 116, '2026-06-16', 'Delivered', 550.00),
		(317, 117, '2026-06-17', 'Processing', 799.00),
		(318, 118, '2026-06-18', 'Delivered', 1799.00),
		(319, 119, '2026-06-19', 'Shipped', 599.00),
		(320, 120, '2026-06-20', 'Delivered', 1499.00),
		(321, 121, '2026-06-21', 'Cancelled', 3200.00),
		(322, 122, '2026-06-22', 'Delivered', 2499.00),
		(323, 123, '2026-06-23', 'Processing', 399.00),
		(324, 124, '2026-06-24', 'Shipped', 999.00),
		(325, 125, '2026-06-25', 'Delivered', 6500.00),
		(326, 126, '2026-06-26', 'Delivered', 450.00),
		(327, 127, '2026-06-27', 'Processing', 1299.00),
		(328, 128, '2026-06-28', 'Delivered', 2999.00),
		(329, 129, '2026-06-29', 'Shipped', 899.00),
		(330, 130, '2026-06-30', 'Delivered', 160.00),
		(331, 101, '2026-07-01', 'Delivered', 2499.00),
		(332, 102, '2026-07-02', 'Processing', 1798.00),
		(333, 103, '2026-07-03', 'Shipped', 3499.00),
		(334, 104, '2026-07-04', 'Delivered', 1299.00),
		(335, 105, '2026-07-05', 'Cancelled', 799.00),
		(336, 106, '2026-07-06', 'Delivered', 4299.00),
		(337, 107, '2026-07-07', 'Processing', 550.00),
		(338, 108, '2026-07-08', 'Shipped', 2999.00),
		(339, 109, '2026-07-09', 'Delivered', 1199.00),
		(340, 110, '2026-07-10', 'Delivered', 4500.00),
		(341, 111, '2026-07-11', 'Processing', 650.00),
		(342, 112, '2026-07-12', 'Cancelled', 2499.00),
		(343, 113, '2026-07-13', 'Delivered', 899.00),
		(344, 114, '2026-07-14', 'Shipped', 12500.00),
		(345, 115, '2026-07-15', 'Delivered', 1499.00),
		(346, 116, '2026-07-16', 'Processing', 599.00),
		(347, 117, '2026-07-17', 'Delivered', 3200.00),
		(348, 118, '2026-07-18', 'Shipped', 999.00),
		(349, 119, '2026-07-19', 'Delivered', 6500.00),
		(350, 120, '2026-07-20', 'Delivered', 160.00);

		SELECT * FROM Customer_Orders;
        
-- ==================================================================================================== 
	
	INSERT INTO Payments VALUES
		(501, 301, '2026-06-01', 'UPI', 55000.00, 'Successful'),
		(502, 302, '2026-06-02', 'Credit Card', 25000.00, 'Successful'),
		(503, 303, '2026-06-03', 'Debit Card', 1798.00, 'Successful'),
		(504, 304, '2026-06-04', 'UPI', 3499.00, 'Successful'),
		(505, 305, '2026-06-05', 'Cash on Delivery', 1299.00, 'Successful'),
		(506, 306, '2026-06-06', 'UPI', 1999.00, 'Refunded'),
		(507, 307, '2026-06-07', 'Credit Card', 4299.00, 'Successful'),
		(508, 308, '2026-06-08', 'Net Banking', 3499.00, 'Pending'),
		(509, 309, '2026-06-09', 'UPI', 650.00, 'Successful'),
		(510, 310, '2026-06-10', 'Debit Card', 899.00, 'Successful'),
		(511, 311, '2026-06-11', 'UPI', 2999.00, 'Successful'),
		(512, 312, '2026-06-12', 'Credit Card', 1199.00, 'Pending'),
		(513, 313, '2026-06-13', 'UPI', 2499.00, 'Failed'),
		(514, 314, '2026-06-14', 'Net Banking', 4500.00, 'Successful'),
		(515, 315, '2026-06-15', 'Debit Card', 12500.00, 'Successful'),
		(516, 316, '2026-06-16', 'UPI', 550.00, 'Successful'),
		(517, 317, '2026-06-17', 'Cash on Delivery', 799.00, 'Pending'),
		(518, 318, '2026-06-18', 'Credit Card', 1799.00, 'Successful'),
		(519, 319, '2026-06-19', 'UPI', 599.00, 'Successful'),
		(520, 320, '2026-06-20', 'Debit Card', 1499.00, 'Successful'),
		(521, 321, '2026-06-21', 'UPI', 3200.00, 'Refunded'),
		(522, 322, '2026-06-22', 'Credit Card', 2499.00, 'Successful'),
		(523, 323, '2026-06-23', 'UPI', 399.00, 'Pending'),
		(524, 324, '2026-06-24', 'Net Banking', 999.00, 'Successful'),
		(525, 325, '2026-06-25', 'Debit Card', 6500.00, 'Successful'),
		(526, 326, '2026-06-26', 'UPI', 450.00, 'Successful'),
		(527, 327, '2026-06-27', 'Cash on Delivery', 1299.00, 'Pending'),
		(528, 328, '2026-06-28', 'Credit Card', 2999.00, 'Successful'),
		(529, 329, '2026-06-29', 'UPI', 899.00, 'Successful'),
		(530, 330, '2026-06-30', 'Debit Card', 160.00, 'Successful'),
		(531, 331, '2026-07-01', 'UPI', 2499.00, 'Successful'),
		(532, 332, '2026-07-02', 'Credit Card', 1798.00, 'Pending'),
		(533, 333, '2026-07-03', 'Debit Card', 3499.00, 'Successful'),
		(534, 334, '2026-07-04', 'UPI', 1299.00, 'Successful'),
		(535, 335, '2026-07-05', 'Cash on Delivery', 799.00, 'Failed'),
		(536, 336, '2026-07-06', 'Net Banking', 4299.00, 'Successful'),
		(537, 337, '2026-07-07', 'UPI', 550.00, 'Successful'),
		(538, 338, '2026-07-08', 'Credit Card', 2999.00, 'Successful'),
		(539, 339, '2026-07-09', 'Debit Card', 1199.00, 'Successful'),
		(540, 340, '2026-07-10', 'UPI', 4500.00, 'Successful'),
		(541, 341, '2026-07-11', 'Net Banking', 650.00, 'Pending'),
		(542, 342, '2026-07-12', 'UPI', 2499.00, 'Refunded'),
		(543, 343, '2026-07-13', 'Credit Card', 899.00, 'Successful'),
		(544, 344, '2026-07-14', 'Debit Card', 12500.00, 'Successful'),
		(545, 345, '2026-07-15', 'UPI', 1499.00, 'Successful'),
		(546, 346, '2026-07-16', 'Cash on Delivery', 599.00, 'Pending'),
		(547, 347, '2026-07-17', 'Credit Card', 3200.00, 'Successful'),
		(548, 348, '2026-07-18', 'UPI', 999.00, 'Successful'),
		(549, 349, '2026-07-19', 'Net Banking', 6500.00, 'Successful'),
		(550, 350, '2026-07-20', 'Debit Card', 160.00, 'Successful');

		SELECT * FROM Payments;
-- ==================================================================================================== 
-- 01. Display the complete CREATE TABLE structure of Customers.
-- ==================================================================================================== 
	
		SELECT * FROM Customers;
    
-- ==================================================================================================== 
-- 02. Create a new table named Suppliers with Supplier_ID, Supplier_Name,
--     City and Phone columns.
-- ==================================================================================================== 

		CREATE TABLE Supliers (
				Suplier_ID INT PRIMARY KEY,
                Suplier_Name VARCHAR(100),
                City VARCHAR(50),
                Phone_Number VARCHAR(15) UNIQUE
            );

-- ==================================================================================================== 
-- 03. Add a new column Email to the Suppliers table.
-- ==================================================================================================== 

		ALTER TABLE Supliers
        ADD COLUMN Email VARCHAR(100);
        
-- ==================================================================================================== 
-- 04. Add a new column Delivery_Date to the Customer_Orders table.
-- ==================================================================================================== 

		ALTER TABLE Customer_Orders
        ADD COLUMN Delivery_Date DATE;
        
-- ==================================================================================================== 
-- 05. Add a new column Product_Description to the Products table.
-- ==================================================================================================== 
		
		ALTER TABLE Products
        ADD COLUMN Product_Descrption VARCHAR(500);
        
-- ==================================================================================================== 
-- 06. Change the datatype of Product_Description to TEXT.
-- ==================================================================================================== 

		ALTER TABLE Products
        MODIFY COLUMN Product_Descrption Text;

-- ==================================================================================================== 
-- 07. Increase the size of Customer_Name column to VARCHAR(150).
-- ==================================================================================================== 

		ALTER TABLE Customers
		MODIFY COLUMN Customer_Name VARCHAR(150);

-- ==================================================================================================== 
-- 08. Rename the Mobile_Number column to Contact_Number in Customers.
-- ==================================================================================================== 

		ALTER TABLE Customers
		RENAME COLUMN Mobile_Number TO Contact_Number;
		
		SELECT * FROM Customers;

-- ==================================================================================================== 
-- 09. Rename the Suppliers table to ProductSuppliers.
-- ==================================================================================================== 

        RENAME TABLE Supliers TO ProductSuppliers;
        
-- ==================================================================================================== 
-- 10. Add a new column Return_Status to the CustomerOrders table.
-- ==================================================================================================== 
		
        ALTER TABLE Customer_Orders
        ADD COLUMN Return_Status VARCHAR(20);
        
-- ==================================================================================================== 
-- 11. Remove the Product_Description column from Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        DROP COLUMN Product_Descrption;
        
        DESC PRODUCTS;
        
-- ==================================================================================================== 
-- 12. Remove the Delivery_Date column from CustomerOrders.
-- ==================================================================================================== 

		ALTER TABLE Customer_Orders
        DROP COLUMN Delivery_Date;
        
        SELECT * FROM Customer_Orders;
        
-- ==================================================================================================== 
-- 13. Display the structure of the Products table.
-- ==================================================================================================== 

		DESC Products;
        
-- ==================================================================================================== 
-- 14. Display all tables available in OnlineShoppingDB.
-- ==================================================================================================== 

		SHOW TABLES;
        
-- ==================================================================================================== 
-- 16. Create a new table named Reviews with Review_ID, Customer_ID,
--     Product_ID, Rating and Review_Date columns.
-- ==================================================================================================== 

		CREATE TABLE Reviews(
				Review_ID INT,
                Customer_ID INT,
                Product_ID INT,
                Rating DECIMAL(2,2),
                Review_Date DATE
                );
            
-- ==================================================================================================== 
-- 17. Add a PRIMARY KEY constraint to Review_ID in Reviews.
-- ==================================================================================================== 
		
        ALTER TABLE Reviews
        MODIFY COLUMN Review_ID INT PRIMARY KEY;
        
-- ==================================================================================================== 
-- 18. Add a FOREIGN KEY constraint on Customer_ID in Reviews
--     referencing Customers table.
-- ==================================================================================================== 
		
        ALTER TABLE Reviews
        ADD CONSTRAINT FK_Reviews_Customers
        FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID);
        
-- ==================================================================================================== 
-- 19. Add a FOREIGN KEY constraint on Product_ID in Reviews
--     referencing Products table.
-- ==================================================================================================== 

		ALTER TABLE Reviews
        ADD FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID);
        
-- ==================================================================================================== 
-- 20. Add a UNIQUE constraint to the Mobile_Number column in Customers.
-- ==================================================================================================== 

		ALTER TABLE Customers
        MODIFY COLUMN Contact_Number VARCHAR(15) UNIQUE;
        
        Desc Customers;
        
-- ==================================================================================================== 
-- 21. Add a NOT NULL constraint to Product_Name in Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        MODIFY COLUMN Product_Name VARCHAR(100) NOT NULL;
        
        DESC Products;
        
-- ==================================================================================================== 
-- 22. Add a DEFAULT value 'Available' to Product_Status in Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        MODIFY COLUMN Product_Status VARCHAR(50) DEFAULT 'Available';
        
-- ==================================================================================================== 
-- 23. Add a CHECK constraint to ensure that Product Price is greater than 0.
-- ==================================================================================================== 
	
		ALTER TABLE Products
        ADD CONSTRAINT CHK_Product_Price
        CHECK (Price > 0);
        
        DESC Products;
		
-- ==================================================================================================== 
-- 24. Add a CHECK constraint to ensure that Stock_Quantity is not negative.
-- ==================================================================================================== 

		ALTER TABLE Products
        ADD CONSTRAINT CHK_Stock_Quantity
        CHECK (Stock_Quantity >0);
        
        DESC Products;
        
-- ==================================================================================================== 
-- 25. Add a DEFAULT value 'Pending' to Order_Status in CustomerOrders.
-- ==================================================================================================== 

		ALTER TABLE Customer_Orders
        MODIFY COLUMN Order_Status VARCHAR(50)  DEFAULT 'Pending';
        
-- ==================================================================================================== 
-- 26. Add a new column Discount_Percentage with DECIMAL(5,2) datatype
--     to Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        ADD COLUMN Discount_Percentage DECIMAL(5,2);
        
        DESC Products;
        
-- ==================================================================================================== 
-- 27. Change the datatype of Mobile_Number in Customers to VARCHAR(20).
-- ==================================================================================================== 

		ALTER TABLE Customers
        MODIFY COLUMN Contact_Number VARCHAR(20);
        
        DESC Customers;
-- ==================================================================================================== 
-- 28. Rename the ProductSuppliers table to Suppliers.
-- ==================================================================================================== 

		RENAME TABLE productsuppliers TO Suppliers;
        SHOW TABLES;
        
-- ==================================================================================================== 
-- 29. Remove the Discount_Percentage column from Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        DROP COLUMN Discount_Percentage;
        
        DESC Products;
        
-- ==================================================================================================== 
-- 30. Remove the Reviews table permanently.
-- ==================================================================================================== 

		DROP TABLE Reviews;
        
-- ==================================================================================================== 
-- 31. Create a new table named OrderTracking with Tracking_ID,
--     Order_ID, Tracking_Status and Tracking_Date columns.
-- ====================================================================================================
 
		CREATE TABLE OrderTracking (
				Tracking_ID INT,
                Order_ID INT,
                Tracking_Status VARCHAR(50),
                Tracking_Date DATE
			 );

-- ==================================================================================================== 
-- 32. Set Tracking_ID as AUTO_INCREMENT and PRIMARY KEY.
-- ==================================================================================================== 

		ALTER TABLE OrderTracking
		MODIFY COLUMN Tracking_ID  INT AUTO_INCREMENT PRIMARY KEY;
        
        DESC OrderTracking;
        
-- ==================================================================================================== 
-- 33. Add a FOREIGN KEY on Order_ID referencing CustomerOrders.
-- ==================================================================================================== 

		ALTER TABLE OrderTracking
        ADD FOREIGN KEY (Order_ID)
        REFERENCES Customer_Orders(Order_ID);
        
-- ==================================================================================================== 
-- 34. Create a composite PRIMARY KEY using Order_ID and Product_ID
--     in a new table named OrderProductMapping.
-- ==================================================================================================== 

		CREATE TABLE OrderProductMapping (
				Order_ID INT,
                Products_ID INT,
                PRIMARY KEY (Order_ID , Products_ID)
			);
            
		INSERT INTO OrderProductMapping VALUES
				(301, 201),
				(301, 202),
				(302, 203),
				(302, 204),
				(303, 205),
				(303, 206),
				(304, 207),
				(305, 208),
				(306, 209),
				(307, 210),
				(308, 201),
				(309, 202),
				(310, 203);
            
            DESC OrderProductMapping;
            
-- ==================================================================================================== 
-- 35. Add a DEFAULT value of 0 to Stock_Quantity in Products.
-- ==================================================================================================== 

		ALTER TABLE Products
        MODIFY COLUMN Stock_Quantity INT DEFAULT '0';
        
        DESC Products;
        
-- ==================================================================================================== 
-- 36. Add a CHECK constraint to ensure that Quantity in OrderItems
--     is greater than 0.
-- ==================================================================================================== 
		
        ALTER TABLE Order_Items
        ADD CONSTRAINT CHK_Quantity_Order_items
        CHECK (Quantity >0);
        
        DESC Order_Items;
        
-- ==================================================================================================== 
-- 37. Add a CHECK constraint to ensure that Rating in Reviews
--     is between 1 and 5.
-- ==================================================================================================== 
			
            ALTER TABLE Reviews
            ADD CONSTRAINT CHK_Rating_Reviews
            CHECK (Rating BETWEEN 1 AND 5);
            
-- ==================================================================================================== 
-- 38. Rename the OrderTracking table to ShipmentTracking.
-- ==================================================================================================== 

        RENAME TABLE OrderTracking TO ShipmentTracking;
        
-- ==================================================================================================== 
-- 39. Modify the datatype of Tracking_Status to VARCHAR(40).
-- ==================================================================================================== 
		
        DESC ShipmentTracking;
        
		ALTER TABLE ShipmentTracking
        MODIFY COLUMN Tracking_Status VARCHAR(40);
        
-- ==================================================================================================== 
-- 40. Drop the FOREIGN KEY constraint from ShipmentTracking.
-- ==================================================================================================== 
		SHOW CREATE TABLE ShipmentTracking;
        
		ALTER TABLE ShipmentTracking
		DROP FOREIGN KEY shipmenttracking_ibfk_1;
        
-- ==================================================================================================== 
-- 41. Drop the UNIQUE constraint from Customers Email.
-- ==================================================================================================== 
		
		ALTER TABLE Customers
		DROP INDEX Email;
 
		DESC Customers;
		
-- ==================================================================================================== 
-- 42. Create an index on Product_Name in Products.
-- ==================================================================================================== 

		CREATE INDEX IDX_Product_Name
		ON Products (Product_Name);
		
-- ==================================================================================================== 
-- 43. Drop the index created on Product_Name in Products.
-- ==================================================================================================== 

		DROP INDEX IDX_Product_Name
		ON Products;
        
-- ==================================================================================================== 
-- 44. Truncate all records from ShipmentTracking without deleting
--     its table structure.
-- ==================================================================================================== 
		
        TRUNCATE TABLE ShipmentTracking;
        
        SELECT * FROM ShipmentTracking;
        
-- ==================================================================================================== 
-- 45. Drop the ShipmentTracking table permanently.
-- ==================================================================================================== 
		
        DROP TABLE ShipmentTracking;
        
        SHOW TABLES;
        
-- ==================================================================================================== 
-- 46. Update the Return_Status column in the Customer_Orders table by assigning appropriate 
-- return statuses to 10 existing orders.
-- ==================================================================================================== 
		
        select * from Customer_Orders;
		
        UPDATE Customer_Orders
        SET Return_Status = "Returned"
        WHERE Order_ID IN (301, 305, 307, 316, 320);
        
        UPDATE Customer_Orders
        SET Return_Status = "Return Requested"
        WHERE Order_ID IN (302, 310, 328);
        
        UPDATE Customer_Orders
        SET Return_Status = "Return Approved"
        WHERE Order_ID IN (314, 322, 330);

-- ==================================================================================================== 
-- 47. Add Sample Data In Order_Items Table
-- ==================================================================================================== 
        
        INSERT INTO Order_Items VALUES
				(1, 301, 201, 2, 1500.00, 3000.00),
				(2, 302, 202, 1, 2500.00, 2500.00),
				(3, 303, 203, 3, 500.00, 1500.00),
				(4, 304, 204, 2, 1200.00, 2400.00),
				(5, 305, 205, 1, 3500.00, 3500.00),
				(6, 306, 206, 4, 250.00, 1000.00),
				(7, 307, 207, 2, 1800.00, 3600.00),
				(8, 308, 208, 1, 4500.00, 4500.00),
				(9, 309, 209, 5, 300.00, 1500.00),
				(10, 310, 210, 2, 2200.00, 4400.00);
                
		SELECT * FROM order_items;

-- ==================================================================================================== 
-- 48. Create a table named ProductWarranty with Warranty_ID,
--     Product_ID, Warranty_Period and Warranty_Description columns.
-- ==================================================================================================== 

		CREATE TABLE ProductWarranty (
				Wrrenty_ID INT ,
                Product_ID INT,
                Warranty_Description VARCHAR(100)
			);
            
-- ==================================================================================================== 
-- 49. Add a FOREIGN KEY between ProductWarranty and Products
--     with ON DELETE CASCADE.
-- ==================================================================================================== 
		
        ALTER TABLE ProductWarranty
        ADD FOREIGN KEY (Product_ID)
        REFERENCES Products (Product_ID);
        
-- ==================================================================================================== 
-- 50. Create a new table named CustomerAddress with Address_ID,
--     Customer_ID, City, State and Pincode columns.
-- ==================================================================================================== 
		
        CREATE TABLE CustomerAddress (
				Address_ID INT,
                Customer_ID INT,
                City VARCHAR(100),
                State VARCHAR(100),
                Pincode INT
			);
            
-- ==================================================================================================== 
-- 51. Add a FOREIGN KEY between CustomerAddress and Customers
--     with ON UPDATE CASCADE.
-- ==================================================================================================== 
		
        ALTER TABLE CustomerAddress
        ADD FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID);
        
-- ==================================================================================================== 
-- 52. Add a FOREIGN KEY with ON DELETE SET NULL to a new table
--     referencing Customers.
-- ==================================================================================================== 

-- ==================================================================================================== 
-- 53. Create a composite index on Category_ID and Price in Products.
-- ==================================================================================================== 

-- ==================================================================================================== 
-- 54. Modify the Products table by adding a column named
--     Manufacturing_Date with DATE datatype and a DEFAULT value.
-- ==================================================================================================== 

-- ==================================================================================================== 
-- 55. Drop the OnlineShoppingTestDB database permanently.
-- ==================================================================================================== 





























































