-- Devolve o peso total da bagagem de cada viagem na base de dados

.mode columns
.headers on
.nullvalue NULL

SELECT TripID, sum(Weight) AS LuggageWeight FROM Trip NATURAL JOIN Luggage GROUP BY TripID;    