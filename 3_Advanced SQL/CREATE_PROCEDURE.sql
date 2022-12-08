/*
Stored Procedures - Group of SQL statements created and stored into the database, can be used over the network by several users, decrease network traffic and increase performance.
*/

CREATE PROCEDURE TEST -- Creates stored procedure that selects everything from EmployeeDemographics.
AS
SELECT *
FROM EmployeeDemographics


EXEC TEST -- This returns the select statement's result.



--

CREATE PROCEDURE Temp_Employee
AS

-- Step 1. Create a table.
CREATE TABLE #temp_employee ( 
	JobTitle varchar(100),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)

-- Step 2. Insert into the table.
INSERT INTO #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM EmployeeDemographics Emp
JOIN EmployeeSalary Sal
	ON Emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

-- Step 3. Display the table.
SELECT *
FROM #temp_employee 


EXEC Temp_Employee -- The procedure not only creates a table, but also inserts two joined tables into it, and selects it for us to see.

EXEC Temp_Employee @JobTitle = 'Salesman' -- Using our parameter created in the 'ALTER_PROCEDURE.sql' file.
