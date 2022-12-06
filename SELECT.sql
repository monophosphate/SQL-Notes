/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT *
FROM EmployeeDemographics

SELECT FirstName
FROM EmployeeDemographics

SELECT FirstName, LastName
FROM EmployeeDemographics

SELECT TOP 3 *
FROM EmployeeDemographics

SELECT DISTINCT(Gender) -- Only shows unique items, for example, there are only two distinct genders in the database
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics -- Pulls from 'different' database
