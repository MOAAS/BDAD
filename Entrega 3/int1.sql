-- Devolve o peso total da bagagem de cada viagem na base de dados

.mode columns
.headers on
.nullvalue NULL

SELECT TripID, Trip.AirportCode, Trip.DurationHours + Trip.DurationMinutes / 60.0 AS Duration, sum(Weight) AS LuggageWeight 
FROM Trip NATURAL JOIN Luggage 
GROUP BY TripID;    
ORDER BY Duration;