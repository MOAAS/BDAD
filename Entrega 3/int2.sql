-- Devolve o nome das 5 cidades mais visitadas a partir do aeroporto

.mode columns
.headers on
.nullvalue NULL

SELECT CityName, count(*) AS Count FROM (
    Departure NATURAL JOIN Trip NATURAL JOIN Airport NATURAL JOIN City
) GROUP BY CityID ORDER BY Count DESC LIMIT 5;