/*
CTE - Common Table Expression, creates a temporary table saved in ram.
*/

WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > 40000) -- This entire line of script creates the CTE, to use it, add a query right below it.
SELECT FirstName, Gender, AvgSalary -- This query will return data based off of the above query aka the CTE.
FROM CTE_Employee