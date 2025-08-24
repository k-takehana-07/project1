-- 事前準備
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary INT
);

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Departments テーブルとEmployees テーブルにデータを追加

INSERT INTO Departments (DepartmentName) VALUES ('Sales');
INSERT INTO Departments (DepartmentName) VALUES ('HR');
INSERT INTO Departments (DepartmentName) VALUES ('IT');
INSERT INTO Employees (EmployeeName, DepartmentID, Salary) VALUES ('John Smith', 1, 50000);
INSERT INTO Employees (EmployeeName, DepartmentID, Salary) VALUES ('Jane Doe', 2, 60000);
INSERT INTO Employees (EmployeeName, DepartmentID, Salary) VALUES ('Alice Johnson', 1, 55000);
INSERT INTO Employees (EmployeeName, DepartmentID, Salary) VALUES ('Bob Brown', 3, 70000);
INSERT INTO Employees (EmployeeName, DepartmentID, Salary) VALUES ('Carol White', 2, 65000);

-- 課題1
SELECT
    EmployeeName,
    (SELECT DepartmentName
    FROM Departments
    WHERE Departments.DepartmentID = Employees.DepartmentID) AS DepartmentName
FROM Employees;

-- 課題2
SELECT * 
FROM Employees 
WHERE Salary = (SELECT MAX(Salary) FROM Employees);