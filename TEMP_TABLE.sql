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

-- Real use case for temp table
CREATE TABLE #temp_employee2 (
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)