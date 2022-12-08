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
FROM EmployeeSalary -- Adds a column that includes the table's average salary at the end of each row.



-- Why GROUP BY doesn't work




-- Subquery in FROM




-- Subquery in WHERE



