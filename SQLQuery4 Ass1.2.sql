CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    City VARCHAR(100) NOT NULL,
    StateProvince VARCHAR(100) NOT NULL
);

CREATE TABLE Departments1 (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE Employees1 (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DeptID INT,
    LocationID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

INSERT INTO Locations (LocationID, City, StateProvince) 
VALUES 
(1, 'India', 'swizerland'),
(2, 'Los Angel', 'California'),
(3, 'Chicago', 'Illinois'),
(4, 'Houston', 'Texas');

INSERT INTO Departments1 (DeptID, DeptName, LocationID) 
VALUES 
(1, 'Human Resources', 1),
(2, 'Finance', 2),
(3, 'Engineering', 3),
(4, 'Marketing', 4);


SELECT 
    e.FirstName, 
    e.LastName, 
    d.DeptName AS Departments1, 
    l.City, 
    l.StateProvince
FROM Employees1 e
JOIN Departments d ON e.DeptID = d.DeptID
JOIN Locations l ON e.LocationID = l.LocationID;


select * from Employees1;
select * from Locations;
Select * from Departments1




------Assignment1.3----------

SELECT 
    e.FirstName, 
    e.LastName, 
    e.DeptID AS DepartmentNumber, 
    d.DeptName AS DepartmentName
FROM Employees1 e
JOIN Departments1 d ON e.DeptID = d.DeptID
WHERE e.DeptID IN (1, 2);


----Assignment 1.4-------

SELECT 
    e.FirstName, 
    e.LastName, 
    e.DeptID AS DepartmentNumber, 
    d.DeptName AS DepartmentName
FROM Employees1 e
JOIN Departments1 d ON e.DeptID = d.DeptID
WHERE e.DeptID IN (3, 4);
