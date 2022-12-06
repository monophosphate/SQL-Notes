/*
WHERE Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim' -- Does not equal Jim

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 60

SELECT *
FROM EmployeeDemographics
WHERE Age > 30 AND Gender = 'Female'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'B%' -- Starts with B

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%' -- Contains an S

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'J%so%' -- Starts with J, contains so

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL


SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Alex') -- Condensed way of writing "FirstName = 'Jim' AND FirstName = 'Alex'"