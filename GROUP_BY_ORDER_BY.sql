/*
Group By, Order By
*/

SELECT *
FROM EmployeeDemographics

SELECT Gender, COUNT(Gender) -- Groups by genders, and displays count.
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender) -- Groups by genders and age, and displays count for each entries that have the same gender and age.
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age < 40
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
GROUP BY Gender
ORDER BY GenderCount -- By default, ASC/ascending, showing 1, 6

SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
GROUP BY Gender
ORDER BY GenderCount DESC -- Shows descending 6, 1

SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC -- Orders by 4th column, Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender -- Orders by Age, if ages are similar, Female would go first because A-Z