/*
Case Statements
*/

SELECT FirstName, LastName, Age
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

--

SELECT FirstName, LastName, Age, -- Creates new column with outputs from logic statement
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

--

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 24 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

--

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary * 1.10
	WHEN JobTitle = 'Writer' THEN Salary * 1.05
	WHEN JobTitle = 'Processor' THEN Salary * 1.075
	ELSE Salary * 1.03
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID