create database project;
use project;
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY AUTO_INCREMENT,
    Emp_Name VARCHAR(100),
    Gender VARCHAR(10),
    DOB DATE,
    Contact VARCHAR(15),
    Address TEXT,
    Emp_Email VARCHAR(100) UNIQUE
);
CREATE TABLE Salary_Account (
    Sal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Description TEXT,
    Safety_Security TEXT
);
CREATE TABLE Pay (
    Pay_ID INT PRIMARY KEY AUTO_INCREMENT,
    Emp_ID INT,
    Sal_ID INT,
    Amount DECIMAL(10,2),
    Annual DECIMAL(10,2),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    FOREIGN KEY (Sal_ID) REFERENCES Salary_Account(Sal_ID)
);
CREATE TABLE Leave_Record (
    Leave_ID INT PRIMARY KEY AUTO_INCREMENT,
    Emp_ID INT,
    Date_In DATE,
    Reason TEXT,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
);
CREATE TABLE Qualification (
    Qual_ID INT PRIMARY KEY AUTO_INCREMENT,
    Emp_ID INT,
    Position VARCHAR(100),
    Requirements TEXT,
    Date_In DATE,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
    );
    INSERT INTO Employee (Emp_ID, Emp_Name, Gender, DOB, Contact, Address, Emp_Email) VALUES
(1, 'Suresh Kumar', 'Male', '1990-05-15', '9876543210', '123 Main St, City', 'suresh.kumar@email.com'),
(2, 'Madhan Raj', 'Male', '1992-08-25', '8765432109', '456 Oak St, City', 'madhan.raj@email.com'),
(3, 'Bala krishan', 'Male', '1988-11-10', '7654321098', '789 Pine St, City', 'bala.krishan@email.com'),
(4, 'Giri Prasad', 'Male', '1995-07-20', '6543210987', '321 Elm St, City', 'giri.prasad@email.com'),
(5, 'Vijaya Lakshmi', 'Female', '1985-03-05', '5432109876', '654 Maple St, City', 'vijaya.lakshmi@email.com'),
(6, 'Naveen Kumar', 'Male', '1998-12-30', '4321098765', '987 Cedar St, City', 'naveen.kumar@email.com'),
(7, 'Arun Vijay', 'Male', '1991-09-15', '3210987654', '159 Birch St, City', 'arun.vijay@email.com'),
(8, 'Karthik Raja', 'Male', '1994-04-10', '2109876543', '753 Walnut St, City', 'karthik.raja@email.com'),
(9, 'Priya Dharini', 'female', '1997-06-25', '1098765432', '852 Chestnut St, City', 'priya.dharini@email.com'),
(10, 'Dinesh Kumar', 'Male', '1993-01-05', '9988776655', '357 Redwood St, City', 'dinesh.kumar@email.com'),
(11, 'Saravanan R', 'Male', '1989-02-18', '9876123456', '654 Teak St, City', 'saravanan.r@email.com'),
(12, 'Senthil Kumar', 'Male', '1996-05-22', '8765234567', '741 Cypress St, City', 'senthil.kumar@email.com'),
(13, 'Ramesh Babu', 'Male', '1990-09-12', '7654345678', '852 Fir St, City', 'ramesh.babu@email.com'),
(14, 'Murali Krishna', 'Male', '1992-11-07', '6543456789', '963 Spruce St, City', 'murali.krishna@email.com'),
(15, 'Ganesh Kumar', 'Male', '1987-04-30', '5432567890', '159 Sequoia St, City', 'ganesh.kumar@email.com');
INSERT INTO Pay (Pay_ID, Emp_ID, Amount, Annual) VALUES
(1, 1, 50000, 600000),
(2, 2, 55000, 660000),
(3, 3, 48000, 576000),
(4, 4, 53000, 636000),
(5, 5, 60000, 720000),
(6, 6, 45000, 540000),
(7, 7, 52000, 624000),
(8, 8, 51000, 612000),
(9, 9, 49000, 588000),
(10, 10, 58000, 696000),
(11, 11, 47000, 564000),
(12, 12, 62000, 744000),
(13, 13, 59000, 708000),
(14, 14, 61000, 732000),
(15, 15, 53000, 636000);
INSERT INTO Leave_Record (Leave_ID, Emp_ID, Date_In, Reason) VALUES
(1, 1, '2025-01-10', 'Personal'),
(2, 3, '2025-02-15', 'Sick Leave'),
(3, 5, '2025-03-05', 'Vacation'),
(4, 7, '2025-04-20', 'Family Emergency'),
(5, 9, '2025-05-10', 'Sick Leave'),
(6, 10, '2025-06-12', 'Personal'),
(7, 12, '2025-07-25', 'Medical Leave'),
(8, 14, '2025-08-30', 'Personal'),
(9, 2, '2025-02-18', 'Casual Leave'),
(10, 4, '2025-03-22', 'Sick Leave'),
(11, 6, '2025-05-17', 'Personal'),
(12, 8, '2025-06-28', 'Casual Leave'),
(13, 11, '2025-09-11', 'Vacation'),
(14, 13, '2025-10-15', 'Family Emergency'),
(15, 15, '2025-12-05', 'Personal');
insert INTO Qualification (Qual_ID, Emp_ID, Position, Requirements, Date_In) VALUES
(1, 1, 'Software Engineer', 'B.Tech in CS', '2015-06-01'),
(2, 2, 'Senior Developer', 'M.Tech in IT', '2016-08-15'),
(3, 3, 'Database Admin', 'B.Sc in CS', '2014-10-10'),
(4, 4, 'Project Manager', 'MBA in IT', '2013-05-20'),
(5, 5, 'System Analyst', 'B.Tech in IT', '2017-07-25'),
(6, 6, 'Data Scientist', 'M.Sc in Data Science', '2018-12-01'),
(7, 7, 'QA Engineer', 'BCA', '2016-04-10'),
(8, 8, 'Cloud Engineer', 'B.Tech in Cloud Computing', '2015-09-30'),
(9, 9, 'AI Engineer', 'M.Tech in AI', '2019-11-11'),
(10, 10, 'Security Analyst', 'B.Tech in Cyber Security', '2014-12-05'),
(11, 11, 'Network Engineer', 'B.Sc in Networking', '2013-03-18'),
(12, 12, 'Full Stack Developer', 'MCA', '2017-06-22'),
(13, 13, 'DevOps Engineer', 'B.Tech in IT', '2018-09-12'),
(14, 14, 'Technical Lead', 'M.Tech in Software Engineering', '2012-10-07'),
(15, 15, 'IT Consultant', 'MBA in Information Systems', '2011-08-30');
## employee deatils..............................................................
CREATE VIEW Employee_Salary_View AS 
SELECT Employee.Emp_Name, Pay.Amount, Pay.Annual 
FROM Employee 
JOIN Pay ON Employee.Emp_ID = Pay.Emp_ID;
SELECT * FROM Employee_Salary_View;
##employee leave records..................................................
CREATE VIEW Employees_On_Leave AS 
SELECT E.Emp_ID, E.Emp_Name, L.Date_In AS Leave_Date, L.Reason 
FROM Employee E
JOIN Leave_Record L ON E.Emp_ID = L.Emp_ID;
SELECT * FROM Employees_On_Leave;
##employee qualification...........................................
CREATE VIEW Employee_Qualification_View AS 
SELECT E.Emp_ID, E.Emp_Name, Q.Position, Q.Requirements, Q.Date_In 
FROM Employee E
JOIN Qualification Q ON E.Emp_ID = Q.Emp_ID;
SELECT * FROM Employee_Qualification_View;
##store prodcure for get all employees along with their salary details........................................
DELIMITER //
CREATE PROCEDURE GetEmployeeSalaries()
BEGIN
    SELECT Employee.Emp_Name, Pay.Amount, Pay.Annual  
    FROM Employee  
    JOIN Pay ON Employee.Emp_ID = Pay.Emp_ID;
END//
DELIMITER ;
CALL GetEmployeeSalaries();
### retrieve employees who have taken leave along with leave reason ...........................
DELIMITER //
CREATE PROCEDURE GetEmployeesOnLeave()
BEGIN
    SELECT Employee.Emp_Name, Leave_Record.Date_In, Leave_Record.Reason  
    FROM Employee  
    JOIN Leave_Record ON Employee.Emp_ID = Leave_Record.Emp_ID;
END//
DELIMITER ;
CALL GetEmployeesOnLeave();
## list all employees along with their qualifications.....................................................
DELIMITER //
CREATE PROCEDURE GetEmployeeQualifications()
BEGIN
    SELECT Employee.Emp_Name, Qualification.Position, Qualification.Requirements  
    FROM Employee  
    JOIN Qualification ON Employee.Emp_ID = Qualification.Emp_ID;
END//
DELIMITER ;
CALL GetEmployeeQualifications();
##Calculate the average salary of employees...................................................
DELIMITER //
CREATE PROCEDURE GetAverageSalary()
BEGIN
    SELECT AVG(Amount) AS Average_Salary FROM Pay;
END//
DELIMITER ;
CALL GetAverageSalary();
## find the highest annual salary........................................
DELIMITER //
CREATE PROCEDURE GetHighestSalary()
BEGIN
    SELECT MAX(Annual) AS Highest_Salary FROM Pay;
END//
DELIMITER ;
CALL GetHighestSalary();
## find employees born after a given year.........................................................
DELIMITER //
CREATE PROCEDURE GetEmployeesBornAfter(IN year_param YEAR)
BEGIN
    SELECT Emp_Name, DOB FROM Employee WHERE YEAR(DOB) > year_param;
END//
DELIMITER ;
CALL GetEmployeesBornAfter(1990);
## get names and emails of all employees...........................................
DELIMITER //
CREATE PROCEDURE GetEmployeeNamesEmails()
BEGIN
    SELECT Emp_Name, Emp_Email FROM Employee;
END//
DELIMITER ;
CALL GetEmployeeNamesEmails();
## get the youngest employee in the company.................................................................
DELIMITER //
CREATE PROCEDURE GetYoungestEmployee()
BEGIN
    SELECT Emp_Name, DOB FROM Employee ORDER BY DOB DESC LIMIT 1;
END//
DELIMITER ;
CALL GetYoungestEmployee();
## get the employee with the longest service duration..................................................
DELIMITER //
CREATE PROCEDURE GetLongestServingEmployee()
BEGIN
    SELECT Employee.Emp_Name, Qualification.Date_In  
    FROM Employee  
    JOIN Qualification ON Employee.Emp_ID = Qualification.Emp_ID  
    ORDER BY Qualification.Date_In ASC  
    LIMIT 1;
END//
DELIMITER ;
CALL GetLongestServingEmployee();
## get the count of employees by gender..................................................................
DELIMITER //
CREATE PROCEDURE GetEmployeeCountByGender()
BEGIN
    SELECT Gender, COUNT(*) AS Count FROM Employee GROUP BY Gender;
END//
DELIMITER ;
CALL GetEmployeeCountByGender();
select * from employee;
