/*
Updating/Deleting Data
*/

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax' -- Updates the row with Holly Flax to include an ID of 1012

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female' -- Updating two columns at once
WHERE EmployeeID = 1012

DELETE FROM EmployeeDemographics -- Permantently deletes entire row
WHERE EmployeeID = 1005

SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1004 -- Running SELECT first before changing it to DELETE helps prevent irreversible mistakes