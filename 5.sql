-- Table creation for TEACHER
CREATE TABLE TEACHER (
    ID INT PRIMARY KEY,                     -- Unique identifier for each teacher
    Name VARCHAR(50),                       -- Teacher's name
    Dep_ID INT,                             -- Department ID (Foreign Key referencing DEPARTMENT)
    Subject VARCHAR(50),                    -- Subject taught by the teacher
    Experience_in_years INT                 -- Experience in years
);

-- Table creation for DEPARTMENT
CREATE TABLE DEPARTMENT (
    Dep_ID INT PRIMARY KEY,                 -- Unique department ID
    D_Name VARCHAR(50),                     -- Department name
    Address VARCHAR(100),                   -- Department address
    City VARCHAR(50)                        -- City where department is located
);

-- Inserting sample data into DEPARTMENT table
INSERT INTO DEPARTMENT (Dep_ID, D_Name, Address, City) VALUES
(1211, 'Information Technology', '123 Main St', 'Calicut'),
(1212, 'Chemistry', '456 Science Rd', 'Calicut'),
(1213, 'Information Technology', '789 Tech Ave', 'Mumbai'),
(1214, 'Physics', '101 Space St', 'Delhi'),
(1215, 'Mathematics', '202 Algebra Ave', 'Calicut');

-- Inserting sample data into TEACHER table
INSERT INTO TEACHER (ID, Name, Dep_ID, Subject, Experience_in_years) VALUES
(1, 'John Doe', 1211, 'Information Technology', 10),
(2, 'Jane Smith', 1212, 'Chemistry', 6),
(3, 'Emily Johnson', 1211, 'Information Technology', 5),
(4, 'Michael Brown', 1213, 'Information Technology', 9),
(5, 'Sarah Wilson', 1214, 'Physics', 3);

-- Queries

-- (a) List the names of all the teachers who teach "Information Technology" and have more than 8 years of experience.
SELECT Name 
FROM TEACHER 
WHERE Subject = 'Information Technology' 
AND Experience_in_years > 8;

-- (b) List the addresses of all the "Chemistry Department" in city "Calicut".
SELECT Address 
FROM DEPARTMENT 
WHERE D_Name = 'Chemistry' 
AND City = 'Calicut';

-- (c) Add column Date_of_Birth in the TEACHER table.
ALTER TABLE TEACHER 
ADD Date_of_Birth DATE;

-- (d) Display the names and addresses of all the teachers of "Information Technology" who work for "Dep_ID = 1213".
SELECT T.Name, D.Address 
FROM TEACHER T 
JOIN DEPARTMENT D ON T.Dep_ID = D.Dep_ID 
WHERE T.Subject = 'Information Technology' 
AND T.Dep_ID = 1213;

-- (e) Display the names and subjects of all teachers whose experience is less than 4 years.
SELECT Name, Subject 
FROM TEACHER 
WHERE Experience_in_years < 4;
