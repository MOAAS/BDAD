.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Employee;

-- Removido um empregado entre 0, 1, 2 e 3 para trabalhar para 4 --
Delete FROM Employee Where Employee.PersonID = 30;

-- Removido um empregado entre 0, 1, 2 e 3 para trabalhar para 5 --
Delete FROM Employee Where Employee.PersonID = 31;

SELECT * FROM Employee;
