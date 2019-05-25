.mode columns;
.headers on;
.nullvalue NULL;

PRAGMA foreign_keys = ON;

SELECT * FROM Employee;

Delete FROM Employee Where Employee.PersonID = 30;
Delete FROM Employee Where Employee.PersonID = 31;

SELECT * FROM Employee;
