/*
Having Clause
*/

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1 -- Finding JobTitles with more than 1 employee, needs to use Having because WHERE would not execute in the right order, also has to be after GROUP because it relies on it to determine the count.

--

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary) -- Finds Average salary per JobTitles.

--

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000 -- Only displays roles with an average salary over 45000.
ORDER BY AVG(Salary)