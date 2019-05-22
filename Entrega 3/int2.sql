-- Devolve o nome das 5 cidades mais visitadas a partir do aeroporto

.mode columns
.headers on
.nullvalue NULL

SELECT CityName, count(*) FROM ((Departure NATURAL JOIN Trip) NATURAL JOIN Airport) NATURAL JOIN City GROUP BY CityID ORDER BY count(*) DESC LIMIT 5;