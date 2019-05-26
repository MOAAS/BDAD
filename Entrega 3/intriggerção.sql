SELECT TripID, AirportCode, AirlineName, ArrivalDate AS Date, ArrivalTime AS Time, "Arrival" AS Type, GateName FROM Arrival NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline JOIN Gate ON Trip.GateID = Gate.WorkplaceID
UNION ALL
SELECT TripID, AirportCode, AirlineName, DepartureDate AS Date, DepartureTime AS Time, "Departure" AS Type, GateName FROM Departure NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN Airline JOIN Gate ON Trip.GateID = Gate.WorkplaceID 
ORDER BY Type DESC, Date ASC, Time ASC;