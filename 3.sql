-- Table Schema

-- 1. Customer Table Structure
-- 
-- | Customer_ID (INT) | Name (VARCHAR(50)) | Month (VARCHAR(20)) | City (VARCHAR(50)) |
--
-- Primary Key: Customer_ID

-- Creating the Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Month VARCHAR(20),
    City VARCHAR(50)
);

-- Insert sample data into the Customer table (optional)
INSERT INTO Customer (Customer_ID, Name, Month, City) VALUES
(1, 'Alice', 'December', 'New York'),
(2, 'Bob', 'January', 'Los Angeles'),
(3, 'Carol', 'December', 'Chicago'),
(4, 'Dave', 'December', 'Miami'),
(5, 'Eva', 'January', 'Houston');

-- Questions and Answers

-- i) Find the name of all the customers
-- Answer:
SELECT Name 
FROM Customer;

-- ii) Find the names of all the customers who registered in December or January
-- Answer:
SELECT Name 
FROM Customer 
WHERE Month = 'December' OR Month = 'January';

-- iii) Find the details of customers who shopped in December and January
-- Answer:
SELECT * 
FROM Customer 
WHERE Month IN ('December', 'January')
GROUP BY Customer_ID 
HAVING COUNT(DISTINCT Month) = 2;

-- viii) Find the details of customers who shopped only in December but not January
-- Answer:
SELECT * 
FROM Customer 
WHERE Month = 'December' 
AND Customer_ID NOT IN (
    SELECT Customer_ID 
    FROM Customer 
    WHERE Month = 'January'
);
