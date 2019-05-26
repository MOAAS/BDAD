--Devolve as companhias aéreas e a frequência de passagem pelos aeroportos

.mode columns
.headers on
.nullvalue NULL

SELECT AirlineName, AirportName, count(*) AS NumVisits FROM (
    Trip NATURAL JOIN Airline NATURAL JOIN Airplane NATURAL JOIN Airport
) GROUP BY AirlineName, AirportName;