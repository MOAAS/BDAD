--Devolve a tendência de quantos voos passam pelo aeroporto agrupados por hora do dia

.mode columns
.headers on
.nullvalue NULL

SELECT substr(Times, 0, 3) AS Time, sum(Count) AS NumFlights FROM (
    SELECT DepartureTime AS Times, count(*) AS Count FROM (
        Departure NATURAL JOIN Trip
    ) GROUP BY DepartureTime
    UNION ALL
    SELECT ArrivalTime AS Times, count(*) AS Count FROM (
        Arrival NATURAL JOIN Trip
    ) GROUP BY ArrivalTime
) Group By Time;