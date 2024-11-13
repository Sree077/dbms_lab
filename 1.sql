-- Table Structures

-- 1. TEACHER Table Structure
-- 
-- | Teacher_ID (INT) | Department (VARCHAR(50)) | Years_of_Exp (INT) | Name (VARCHAR(50)) |
-- 
-- Primary Key: Teacher_ID

-- 2. SUBJECT_PAPER Table Structure
-- 
-- | Sub_Paper_ID (INT) | T_ID (INT) | Title_of_Paper (VARCHAR(100)) | Programme (VARCHAR(50)) | Semester (INT) |
-- 
-- Primary Key: Sub_Paper_ID
-- Foreign Key: T_ID references Teacher_ID in TEACHER table

-- Questions and Answers

-- 1. Display Name and Years-Of-Exp of all the teachers of "English" department
-- Answer:
SELECT Name, Years_of_Exp 
FROM TEACHER 
WHERE Department = "English";

-- 2. List the Subject Paper that are handled by Teacher_ID = 5.
-- Answer:
SELECT Title_of_Paper 
FROM SUBJECT_PAPER 
WHERE T_ID = 5;

-- 3. List the name of Programme and Semester of paper titled "Web Programming"
-- Answer:
SELECT Programme, Semester 
FROM SUBJECT_PAPER 
WHERE Title_of_Paper = "Web Programming";

-- 4. List name of all the teachers of "Maths" department
-- Answer:
SELECT Name 
FROM TEACHER 
WHERE Department = "Maths";
