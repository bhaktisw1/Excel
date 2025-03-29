CREATE TABLE Employees (
    EmpID INT PRIMARY KEY, 
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    DeptID INT, 
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY, 
    DeptName VARCHAR(100) NOT NULL
);

INSERT INTO Departments (DeptID, DeptName) 
VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing');




select * from Employees;
Select * from Departments;


SELECT 
    e.FirstName, 
    e.LastName, 
    e.DeptID AS DepartmentNumber, 
    d.DeptName AS DepartmentName
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID;
