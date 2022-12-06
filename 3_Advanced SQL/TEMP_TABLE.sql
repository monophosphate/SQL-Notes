/*
Temp Tables, creates temporary tables, useful for running complex query on large tables. Saves a query's result for further querying, like CTE but more useable.
*/

CREATE TABLE #temp_employee ( -- The pound sign in front of the name denotes a temp table
	EmployeeID int,
	JobTitle varchar(100),
	Salary int
)

SELECT *
FROM #temp_employee
ORDER BY EmployeeID ASC

INSERT INTO #temp_employee VALUES (
	0001, 'HR', 45000
)

INSERT INTO #temp_employee
SELECT *
FROM EmployeeSalary

--

DROP TABLE IF EXISTS #temp_employee2 -- TIP: This was added after the fact and allows you to rerun the script, without already existing table error.
CREATE TABLE #temp_employee2 (
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)

INSERT INTO #temp_employee2
SELECT 
	JobTitle,
	Count(JobTitle),
	Avg(Age),
	Avg(Salary)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee2

