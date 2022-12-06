/*
Partition By
*/

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender -- This shows the number of males or females in a separate column for each person. Partition by allows to add the query below alongside the rest of this query.
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

SELECT Gender, COUNT(Gender) -- This would only show the number of males and females.
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY Gender