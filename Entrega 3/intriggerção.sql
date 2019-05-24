-- tipo aquele ecrã que aparece nos aeroportos com a lista de voos de chegada
SELECT AirportCode, AirlineName, ArrivalDate, ArrivalTime, GateName FROM Arrival NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline, Gate WHERE Trip.GateID = Gate.WorkplaceID ORDER BY ArrivalDate ASC, ArrivalTime ASC;

-- tipo aquele ecrã que aparece nos aeroportos com a lista de voos de partida
SELECT AirportCode, AirlineName, DepartureDate, DepartureTime, GateName FROM Departure NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline, Gate WHERE Trip.GateID = Gate.WorkplaceID ORDER BY DepartureDate ASC, DepartureTime ASC;