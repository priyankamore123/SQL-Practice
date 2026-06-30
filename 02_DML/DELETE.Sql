-- ============================================================================
-- Practice   : DML 
-- Author     : Priyanka More
-- Date       : 30-06-2026
-- ============================================================================
-- DELETE
-- ============================================================================
	CREATE DATABASE LibraryDB;
    USE  LibraryDB;
		CREATE TABLE BOOKS (
			BookID	INT,
			BookTitle VARCHAR(100),
			AuthorName VARCHAR(50),
			Category VARCHAR(50),
			Price INT,
			Quantity INT,
			PublishYear INT
			);
	  
       INSERT INTO BOOKS VALUES
			(101,'SQL Basics','John Smith','Technology',450,10,2022),
            (102,'Python Guide','Alice Brown','Technology',650,8,2023),
            (103,'Data Science','Devid Lee','Technology',900,5,2021),
            (104,'Atomic Habits','John Smith','Self Help',550,15,2018),
            (105,'Rich Dad Poor Dad','Robert Kiyosaki','Finance',500,12,2017),
            (106,'The Alchemist','Paulo Coelho','Novel',350,20,2015),
			(107,'Wings of Fire','A.P.J.Abdul Kalam','Biography',400,9,2014),
            (108,'Lkigai','Hector Garcia','Self Help',480,14,2019),
            (109,'Deep Work','Cal Newport','Productivity',620,6,2018),
            (110,'Clean Code','Robert Martin','Technology',850,4,2008),
            (111,'Thinck and Grow Rich','Napoleon Hill','Finance',450,18,2016),
            (112,'The Psychology of Money','Morgan Housel','Finance',700,11,2020);

    SELECT * FROM BOOKS;
    
-- ============================================================================    
-- Q1. Delete the book whose BookID is 106.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE BookID = 106;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q2. Delete the book titled 'Ikigai'.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE BookTitle = 'Ikigai';
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q3. Delete all books in the Novel category.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE Category = 'Novel';
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q4. Delete the book whose Price is 900.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE PRICE = 900;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q5.Delete all books published in 2023.
-- ============================================================================
		DELETE FROM BOOKS 
        WHERE Publishyear = 2023;
        SELECT * FROM BOOKS;
-- ============================================================================        
-- Q6. Delete books whose Price is greater than 700.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE PRICE > 700;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q7. Delete books whose Quantity is less than 7.
-- ============================================================================
		DELETE FROM BOOKS 
        WHERE QUANTITY < 7;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q8. Delete books in the Finance category.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE Category = 'finance';
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q9.Delete books published before 2016.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE PublishYear < 2016;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q10. Delete books whose author's name is John Smith.
-- ============================================================================
		DELETE FROM BOOKS 
        WHERE AuthorName = 'John Smith';
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q11. Delete books where the category is Technology and the price is greater than 600.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE Category ='Technology' and Price > 600;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q12. Delete books where the category is Finance or Self Help.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE Category = 'Finance' OR Category = 'Self Help';
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q13. Delete books whose title starts with 'T'.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE BookTitle Like 'T%';
        SELECT * FROM BOOKS;
		
-- ============================================================================
-- Q14. Delete books whose price is between 400 and 600.
-- ============================================================================
		DELETE FROM BOOKS
        WHERE PRICE BETWEEN 400 AND 600;
        SELECT * FROM BOOKS;
-- ============================================================================
-- Q15. Delete all records from the Books table without deleting the table.
-- ============================================================================
		TRUNCATE TABLE BOOKS;
        SELECT * FROM BOOKS;