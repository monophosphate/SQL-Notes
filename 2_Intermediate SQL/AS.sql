/*
Aliasing - Helps others understand your scripts
*/

SELECT FirstName AS Fname
FROM EmployeeDemographics

SELECT FirstName Fname -- A space works the same as 'AS'
FROM EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics

SELECT Avg(Age) AS AvgAge
FROM EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary -- Important to use alias in the SELECT statement when using a lot of joins as it can quickly get disorganized.
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

--

SELECT a.EmployeeID, a.FirstName, a.LastName, b.JobTitle, c.Age -- Do not use letters as they hardly convey any meaning.
FROM EmployeeDemographics a
LEFT JOIN EmployeeSalary b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN WarehouseEmployeeDemographics c
	ON a.EmployeeID = c.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age -- This is better
FROM EmployeeDemographics Demo
LEFT JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WarehouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID