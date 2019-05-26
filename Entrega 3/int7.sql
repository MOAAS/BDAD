--Devolve uma lista de todas as viagens com o tipo, data e hora, ordenadas por data e hora (como um painel informativo de um aeroporto)

.mode columns
.headers on
.nullvalue NULL

SELECT TripID, AirportCode, AirlineName, ArrivalDate AS Date, ArrivalTime AS Time, "Arrival" AS Type, GateName FROM Arrival NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline JOIN Gate ON Trip.GateID = Gate.WorkplaceID
UNION ALL
SELECT TripID, AirportCode, AirlineName, DepartureDate AS Date, DepartureTime AS Time, "Departure" AS Type, GateName FROM Departure NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline JOIN Gate ON Trip.GateID = Gate.WorkplaceID 
ORDER BY Date ASC, Time ASC;