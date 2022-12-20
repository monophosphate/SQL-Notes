# SQL Notes
This repository contains a collection of SQL notes and examples that demonstrate my proficiency in using SQL to manipulate and query data. The notes cover a range of topics, including common SQL commands, data types, and database concepts, and are designed to showcase my ability to effectively use SQL in a variety of settings.

## Contents

### Basic SQL
['CREATE TABLE' Statement](1_Basic%20SQL/CREATE_TABLE.sql) - Creates a table.<br />
['INSERT INTO' Statement](1_Basic%20SQL/INSERT_INTO.sql) - Inserts records into a database.<br /> 
['SELECT' and 'FROM' Statements](1_Basic%20SQL/SELECT_FROM.sql) - Selects data from a database.<br />
['WHERE' Statement](1_Basic%20SQL/WHERE.sql) - Extract only records that fulfill a specified condition.<br />
['GROUP BY' and 'ORDER BY' Statements](1_Basic%20SQL/GROUP_BY_ORDER_BY.sql) - Groups rows that have the same values into summary rows. Orders records in specified order.<br />

### Intermediate SQL
['JOIN' Statement](2_Intermediate%20SQL/JOINS.sql) - Combine rows from two or more tables, based on a related column.<br /> 
['UNION' Statement](2_Intermediate%20SQL/UNIONS.sql) - Combine two or more 'SELECT' statements.<br /> 
['CASE' Statement](2_Intermediate%20SQL/CASE.sql) - Evaluates conditions sequentially, similar to if/then/else.<br /> 
['HAVING' Statement](2_Intermediate%20SQL/HAVING.sql) - Used because 'WHERE' cannot be used with aggregate functions.<br /> 
['UPDATE' and 'DELETE' Statements](2_Intermediate%20SQL/UPDATE_DELETE.sql) - Modifies/Deletes existing records in a table.<br /> 
['AS' Statement](2_Intermediate%20SQL/AS.sql) - Aliases give tables or columns temporary names, makes it more readable.<br /> 
['PARTITION BY' Statement](2_Intermediate%20SQL/PARTITION_BY.sql) - Divides rows/query result set into small partitons. Similar to 'GROUP BY' except all rows are shown.<br /> 

### Advanced SQL
[CTE 'WITH' Statement](3_Advanced%20SQL/CTE_WITH.sql) - Temporary table from a SELECT statement that can be used in a subsequent SELECT statement.<br />
[Temp Tables](3_Advanced%20SQL/TEMP_TABLE.sql) - Database table that exists temporarily on the database server.<br />
[Subqueries](3_Advanced%20SQL/SUBQUERIES.sql) - Nested SELECT statement within another SELECT, INSERT, UPDATE, or DELETE statement.<br />
['TRIM' Statement](3_Advanced%20SQL/TRIMS.sql) - Removes leading or trailing spaces from a string.<br />
['CREATE PROCEDURE' Statement](3_Advanced%20SQL/CREATE_PROCEDURE.sql) - Stores a precompiled collection of SQL statements in the database.<br />
['ALTER PROCEDURE' Statement](3_Advanced%20SQL/ALTER_PROCEDURE.sql) - Modifies it.<br />

## Additional Resources

- [SQL documentation](https://docs.microsoft.com/en-us/sql/)
