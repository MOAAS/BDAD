-- por cada local de trabalho, regista a media de salarios e média de idades dos seus trabalhadores. se não existirem trabalhadores, poe a null

.mode columns
.headers on
.nullvalue NULL

SELECT Workplace.WorkplaceName, 
        avg(Employee.Salary) AS AverageSalary, 
        avg((strftime('%Y', 'now') - strftime('%Y', Person.BirthDate)) - (strftime('%m-%d', 'now') < strftime('%m-%d', Person.BirthDate))) AS AverageAge
FROM Workplace LEFT OUTER JOIN (Employee NATURAL JOIN Person) Using(WorkplaceID) 
GROUP BY Workplace.WorkplaceID
ORDER BY AverageSalary ASC, AverageAge ASC;