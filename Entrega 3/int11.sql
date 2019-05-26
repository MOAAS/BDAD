-- Lista de companhias aéreas ordenadas decrescentemente por numero de ligacoes, depois ordenadas por nome de companhia e depois por nome de destino --

SELECT DISTINCT AirlineName, CountryName, NumConnections FROM (
    SELECT AirlineName, Count(Distinct CountryName) AS NumConnections FROM (
        Trip NATURAL JOIN Airplane NATURAL JOIN Airline NATURAL JOIN Airport NATURAL JOIN City NATURAL JOIN Country
    )
    Group By AirlineName
) 
NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline NATURAL JOIN Airport NATURAL JOIN City NATURAL JOIN Country 
ORDER BY NUMCONNECTIONS DESC, AirlineName ASC, CountryName ASC;