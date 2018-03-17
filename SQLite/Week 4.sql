SELECT CompanyName, ContactName, CompanyName || '(' || ContactName || ')' FROM Customers;

SELECT TRIM("	You the best.	") AS TrimmedString;

SELECT first_name, SUBSTR(first_name, 2, 3) FROM Employees WHERE Dept_id=60;

SELECT UPPER(column_name) FROM table_name;

SELECT LOWER(column_name) FROM table_name;

SELECT UCASE(column_name) FROM table_name;

SELECT Birthdate, STRFTIME('%Y', Birthdate) As Year,
					STRFTIME('%m', Birthdate) As Month,
					STRFTIME('%d', Birthdate) As Day
FROM Employees;

SELECT DATE('now');

SELECT STRFTIME('%Y %m %d', 'now');

SELECT STRFTIME('%H %M %S %s', 'now');

SELECT Birthdate, STRFTIME('%Y', Birthdate) As Year,
					STRFTIME('%m', Birthdate) As Month,
					STRFTIME('%d', Birthdate) As Day,
					DATE(('now') - Birthdate) As Age
FROM Employees;

