-- Devolve o peso total da bagagem de cada viagem na base de dados

.mode columns
.headers on
.nullvalue NULL

SELECT TripID, Trip.AirportCode, round(Trip.DurationHours + Trip.DurationMinutes / 60.0, 2) AS "Duration (Hours)", sum(Weight) AS LuggageWeight 
FROM Trip NATURAL JOIN Luggage 
GROUP BY TripID
ORDER BY LuggageWeight;