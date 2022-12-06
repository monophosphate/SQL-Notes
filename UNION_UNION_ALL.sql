/*
Union, Union All
*/

SELECT *
FROM EmployeeDemographics

SELECT *
FROM WareHouseEmployeeDemographics

SELECT *
FROM EmployeeDemographics
UNION -- Adding this unions the two tables without including duplicates
SELECT *
FROM WareHouseEmployeeDemographics

SELECT *
FROM EmployeeDemographics
UNION ALL -- Includes duplicates
SELECT *
FROM WareHouseEmployeeDemographics
ORDER BY EmployeeID

SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
ORDER BY EmployeeID
