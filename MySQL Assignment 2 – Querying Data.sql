								-- MySQL Assignment 2 - Querying Data

USE employee;
                                -- Data Inserting
                                
INSERT INTO departments (Department_ID, Department_Name) 
VALUES
	(1, 'Software Development'),
	(2, 'Marketing'),
	(3, 'Data Science'),
    (4, 'Human Resources'),
    (5, 'Product Management'),
    (6, 'Content Creation'),
	(7, 'Finance'),
    (8, 'Design'),
    (9, 'Research and Development'),
    (10, 'Customer Support'),
    (11, 'Business Development'),
    (12, 'IT'),
    (13, 'Operations');

INSERT INTO locations (Location_Name) 
VALUES
	('Chennai'),
    ('Bangalore'),
    ('Hyderabad'),
	('Pune');

INSERT INTO employees (Employee_ID, Employee_Name, Gender, Age, Hire_Date, Designation, Department_ID, Location_ID, Salary) 
VALUES
	(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
    (5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
    (5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
    (5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
    (5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
    (5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
    (5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
    (5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
    (5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
    (5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
    (5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
    (5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
    (5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
    (5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
    (5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
    (5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
    (5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
    (5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
    (5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
    (5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
    (5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
    (5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
    (5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
    (5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
    (5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
    (5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
    (5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
    (5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
    (5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
	(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

								-- View All Columns
                                
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Locations;

								-- Distinct Salaries

SELECT DISTINCT(Salary)
FROM Employees;

								-- Provide Alias Name
                                
SELECT Age AS Employee_Age, Salary AS Employee_Salary
FROM Employees;

								-- WHERE CLAUSE & Operators

SELECT Employee_Name, Salary, Hire_Date
FROM Employees 
WHERE Salary > 50000 AND Hire_Date < '2016-01-01';

								-- Missing Data Filling
                                
UPDATE Employees
SET Designation = 'Data Scientist' 
WHERE Designation IS NULL;

SELECT * FROM Employees;

								-- Sorting & Grouping Data

SELECT Employee_ID, Employee_Name, Department_ID, Salary FROM Employees ORDER BY Department_ID, Salary DESC;

								-- Limit First 5 Employees

SELECT * FROM Employees WHERE Hire_Date >= '2018-01-01' LIMIT 5;

								-- Aggregate Functions
                                
SELECT 'Finance' AS Department, SUM(Salary) AS Total_Salary 
FROM Employees 
WHERE Department_ID = (SELECT Department_ID FROM departments WHERE Department_Name = 'Finance');

								-- Find The Minimum Age
                                
SELECT MIN(Age) AS Employee_Minimum_Age FROM Employees;

								-- Group By
                                
SELECT Location_ID, MAX(Salary) AS Maximum_Salary 
FROM Employees
GROUP BY Location_ID;

								-- Average Salary for Each Designation Containing The Word 'Analyst'
                                
SELECT Designation, AVG(Salary) AS Average_Salary 
FROM Employees 
WHERE Designation LIKE ('%Analyst%')
GROUP BY Designation;

								-- HAVING
                                
SELECT Department_ID, ROUND(COUNT(*)) AS Employee_Count 
FROM Employees
GROUP BY Department_ID
HAVING Employee_Count < 3;



SELECT Location_ID, ROUND(AVG(Age)) AS AVG_Age 
FROM Employees
GROUP BY Location_ID
HAVING AVG_Age < 30;

								-- INNER JOINS
                                
SELECT Employee_Name, Designation, Department_Name
FROM Employees AS E
INNER JOIN Departments AS D
ON E.Department_ID = D.Department_ID
;

								-- LEFT JOIN

SELECT D.*, COUNT(E.Employee_ID) AS Employee_Count
FROM Departments AS D
LEFT JOIN Employees AS E
ON D.Department_ID = E.Department_ID
GROUP BY Department_Name;

								-- RIGHT JOIN

SELECT Location_Name, Employee_Name
FROM Employees AS E
RIGHT JOIN Locations AS L
ON E.Location_ID = L.Location_ID;

								-- CROSS JOIN
                                
SELECT Department_ID, Department_Name, Location_ID, Location_Name
FROM Departments
CROSS JOIN Locations;

								-- SELF JOIN

SELECT E.Department_ID, E.Employee_Name AS Employee,
       P.Employee_Name AS Pair_Employee
FROM Employees AS E
JOIN Employees AS P
ON E.Department_ID = P.Department_ID
WHERE E.Employee_ID <> P.Employee_ID;


                                -- WINDOWS FONCTION

SELECT Employee_ID, Employee_Name, Salary,
RANK() OVER(ORDER BY Salary DESC) AS Salary_Rank
FROM Employees;

                                -- DENSE_RANK

SELECT Employee_ID, Employee_Name, Department_ID, Salary,
DENSE_RANK() OVER(PARTITION BY Department_ID ORDER BY Salary DESC) AS Salary_Rank
FROM Employees;

								-- Running Total Salary

SELECT Employee_ID, Employee_Name, Department_ID, Salary,
       SUM(Salary) OVER(PARTITION BY Department_ID ORDER BY Employee_ID) AS Running_Total_Salary
FROM Employees;







