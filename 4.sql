-- Table creation for EMPLOYEE
CREATE TABLE EMPLOYEE (
    ENo INT PRIMARY KEY,          -- Employee Number (Primary Key)
    EName VARCHAR(50),            -- Employee Name
    Address VARCHAR(100),         -- Employee Address
    DNo INT                       -- Department Number (Foreign Key if applicable)
);

-- Table creation for PROJECT
CREATE TABLE PROJECT (
    PName VARCHAR(50),            -- Project Name
    PNo INT PRIMARY KEY,          -- Project Number (Primary Key)
    PLocation VARCHAR(100),       -- Project Location
    DNo INT                       -- Department Number (Foreign Key if applicable)
);

-- Table creation for WORKS_ON
CREATE TABLE WORKS_ON (
    ENo INT,                      -- Employee Number
    PNo INT,                      -- Project Number
    Hours INT,                    -- Hours worked on the project
    PRIMARY KEY (ENo, PNo),       -- Composite Primary Key
    FOREIGN KEY (ENo) REFERENCES EMPLOYEE(ENo),  -- Foreign Key referencing EMPLOYEE table
    FOREIGN KEY (PNo) REFERENCES PROJECT(PNo)    -- Foreign Key referencing PROJECT table
);

-- Sample Data Insertion into EMPLOYEE Table
INSERT INTO EMPLOYEE (ENo, EName, Address, DNo) VALUES
(1, 'John Doe', '123 Elm St, Springfield', 101),
(2, 'Jane Smith', '456 Oak St, Springfield', 102),
(3, 'Emily Davis', '789 Pine St, Shelbyville', 103),
(4, 'Michael Brown', '101 Maple St, Shelbyville', 101),
(5, 'Sarah Wilson', '202 Cedar St, Springfield', 102);

-- Sample Data Insertion into PROJECT Table
INSERT INTO PROJECT (PName, PNo, PLocation, DNo) VALUES
('Project Alpha', 1, 'New York', 101),
('Project Beta', 2, 'Los Angeles', 102),
('Project Gamma', 3, 'Chicago', 103),
('Project Delta', 4, 'Houston', 101),
('Project Epsilon', 5, 'Canada', 102);

-- Sample Data Insertion into WORKS_ON Table
INSERT INTO WORKS_ON (ENo, PNo, Hours) VALUES
(1, 1, 40),
(1, 2, 35),
(2, 3, 30),
(3, 1, 25),
(4, 4, 50),
(5, 5, 20);

-- Query (i): To find the EName and ENo of all the employees who work for DNo= 111
SELECT EName, ENo 
FROM EMPLOYEE 
WHERE DNo = 111;

-- Query (ii): To display all the projects whose PLocation is "Canada"
SELECT PName, PNo, PLocation 
FROM PROJECT 
WHERE PLocation = 'Canada';

-- Query (iii): Display PNo and Hours of all the employee who have more than 15 Hours of work
SELECT PNo, Hours 
FROM WORKS_ON 
WHERE Hours > 15;

-- Query (iv): Find the total number of hours of work by all the employees
SELECT SUM(Hours) 
FROM WORKS_ON;
