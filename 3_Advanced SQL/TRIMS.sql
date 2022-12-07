/*
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES -- Inserting bad data into a table.
('1001   ', 'Jimbo', 'Halbert'),
('   1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors



-- TRIM, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM -- TRIM removes blank spaces from both sides.
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDTRIM -- LTRIM Trims left spaces.
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDTRIM -- RTRIM Trims right spaces.
FROM EmployeeErrors



-- REPLACE

SELECT LastName, REPLACE(LastName, '- Fired','') as LastNameFixed -- Replaces selection with new one, usage: REPLACE(column_name, 'old string', 'new string')
FROM EmployeeErrors



-- SUBSTRING

SELECT SUBSTRING(FirstName, 1, 3) -- Creates substring out of string, usage: SUBSTRING(column_name, # of starting char, how many chars after start)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName, 3, 3) -- For Pamela, this returns mel
FROM EmployeeErrors

SELECT err.FirstName AS LongName, dem.FirstName AS ShortName
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3) -- Fuzzy matching uses substrings to match Pamela with Pam and Jimbo with Jim, not always accurate.



-- UPPER and LOWER

SELECT FirstName, LOWER(FirstName) -- Changes to lowercase
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName) -- Changes to uppercase
FROM EmployeeErrors