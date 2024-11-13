-- Table Structure for 'emp_details' and 'dept_details'
CREATE TABLE emp_details (
    emp_no INT PRIMARY KEY,
    emp_name VARCHAR(100),
    DOB DATE,
    address VARCHAR(255),
    doj DATE,
    mobile_no VARCHAR(15),
    dept_no INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE dept_details (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(100)
);

-- Sample Records for 'dept_details' and 'emp_details'
INSERT INTO dept_details (dept_no, dept_name, location) VALUES 
(101, 'HR', 'New York'),
(102, 'IT', 'San Francisco'),
(103, 'Sales', 'Los Angeles'),
(104, 'Marketing', 'Chicago');

INSERT INTO emp_details (emp_no, emp_name, DOB, address, doj, mobile_no, dept_no, salary) VALUES
(1001, 'John Doe', '1985-06-15', '123 Main St, NY', '2010-03-01', '123-456-7890', 101, 50000.00),
(1002, 'Jane Smith', '1990-08-22', '456 Elm St, SF', '2015-07-15', '987-654-3210', 102, 70000.00),
(1003, 'Michael Brown', '1982-01-30', '789 Oak St, LA', '2012-11-20', '555-123-4567', 103, 60000.00),
(1004, 'Emily Johnson', '1993-05-05', '101 Pine St, Chicago', '2018-06-10', '321-654-9870', 104, 55000.00);

-- 1. Display emp_no, emp_name, dept_name from dept_details, emp_details;
SELECT emp_details.emp_no, emp_details.emp_name, dept_details.dept_name
FROM emp_details
JOIN dept_details ON emp_details.dept_no = dept_details.dept_no;

-- 2. Convert the letters of emp_name into capitals
SELECT UPPER(emp_name) FROM emp_details;

-- 3. Display the emp_name getting second highest salary
SELECT emp_name 
FROM emp_details 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;

-- 4. Update the DOB of a particular employee ('LEENA')
UPDATE emp_details 
SET DOB = '2003-12-12' 
WHERE emp_name = 'LEENA';

-- 5. Create a view named 'Emp' from the table emp_details which shows the details of emp_name in alphabetical order
CREATE VIEW Emp AS 
SELECT * 
FROM emp_details 
ORDER BY emp_name;
