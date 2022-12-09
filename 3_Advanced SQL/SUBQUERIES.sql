/*
Subqueries aka inner queries or nested queries - returns data that will be used in the main query, can be used in select, from, where, insert, update, and delete statements.
*/

SELECT *
FROM EmployeeSalary

-- Subquery in SELECT
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary -- Adds a column that includes the table's average salary at the end of each row.


-- How to do it with PARTITION BY
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary



-- Subqueries do not work with GROUP BY
SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2


-- Subquery in FROM
SELECT Sub.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary -- This is not the most efficient, but is an example.
	  FROM EmployeeSalary) AS Sub


-- Subquery in WHERE
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary -- This table does not contain age information, we will use the subquery to pull that data.
WHERE EmployeeID IN (SELECT EmployeeID -- This subquery creates a list of IDs of employees over 30.
					 FROM EmployeeDemographics
					 WHERE AGE > 30)

