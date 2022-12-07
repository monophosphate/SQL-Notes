# SQL Notes
Compilation of notes I have written to refresh myself with SQL.
# 
### Basic SQL
['CREATE TABLE' Statement](Basic%20SQL/CREATE_TABLE.sql) - Creates a table.<br />
['INSERT INTO' Statement](Basic%20SQL/INSERT_INTO.sql) - Inserts records into a database.<br /> 
['SELECT' and 'FROM' Statements](Basic%20SQL/SELECT_FROM.sql) - Selects data from a database.<br />
['WHERE' Statement](Basic%20SQL/WHERE.sql) - Extract only records that fulfill a specified condition.<br />
['GROUP BY' and 'ORDER BY' Statements](Basic%20SQL/GROUP_BY_ORDER_BY.sql) - Groups rows that have the same values into summary rows. Orders records in specified order.<br />

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
[Temp Tables](Basic%20SQL/TEMP_TABLE.sql) - Database table that exists temporarily on the database server.<br />
