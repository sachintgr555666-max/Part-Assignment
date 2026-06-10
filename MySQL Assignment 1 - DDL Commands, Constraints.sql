-- CREATE DATABASE 
CREATE DATABASE Employee;

-- USE DATABASE
USE Employee;

-- CREATE NEW TABLE
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(25)
    );

CREATE TABLE Location (
    Location_ID INT PRIMARY KEY,
    Location_Name VARCHAR(25)
    );
    
    CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(25),
    Gender VARCHAR(10),
    Age INT,
    Hire_Date DATE,
    Designation VARCHAR(20),
    Salary DECIMAL(10.2),
    Department_ID INT,
    Location_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
    );

SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;

-- ALTER TABLE ADD NEW COLUMN
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(30)
;

-- ALTER TABLE MODIFY the DATA TYPE
ALTER TABLE Employees
MODIFY Designation VARCHAR(30)
;

-- ALTER TABLE DROP COLUMN
ALTER TABLE Employees
DROP COLUMN Age;

-- ALTER TABLE RENAME the COLUMN
ALTER TABLE Employees
RENAME COLUMN Hire_Date TO Date_of_Joining;

-- RENAME the TABLE NAME
RENAME TABLE Departments
TO Departments_info;

RENAME TABLE Location
TO Locations;

-- TRUNCATE the TABLE
TRUNCATE TABLE Employees;

-- DROP the TABLE
DROP TABLE Employees;

-- DROP the DATABASE
DROP DATABASE Employee;

-- CONSTRAINT -- 

-- RECREATE DATADASE
DROP DATABASE IF EXISTS Employee;

-- CREATE DATABASE 
CREATE DATABASE Employee;

-- USE DATABASE
USE Employee;

-- CREATE NEW TABLE
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(25) NOT NULL UNIQUE
    );

CREATE TABLE Locations (
    Location_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location_Name VARCHAR(25) NOT NULL UNIQUE
    );
    
    CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(25) NOT NULL,
    Gender ENUM ('M','F'),
    Age INT CHECK (Age>=18),
    Email VARCHAR(30),
    Hire_Date DATE DEFAULT (CURRENT_DATE),
    Designation VARCHAR(30),
    Salary DECIMAL(10.2),
    Department_ID INT,
    Location_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
	FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
    );

-- SELECT_TABLES
SELECT * FROM Departments;
SELECT * FROM Locations;
SELECT * FROM Employees;
