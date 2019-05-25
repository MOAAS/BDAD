--Devolve todos os passageiros que chegaram e partiram do aeroporto no mesmo dia, com as respetivas horas

.mode columns
.headers on
.nullvalue NULL

SELECT DISTINCT Person.SSN, Person.PersonName, arrivals.ArrivalDate, arrivals.ArrivalTime, departures.DepartureTime FROM (
    (Ticket NATURAL JOIN Trip NATURAL JOIN Departure) AS departures
        JOIN (Ticket NATURAL JOIN Trip NATURAL JOIN Arrival) AS arrivals 
        ON (departures.PassengerID = arrivals.PassengerID AND departures.DepartureDate LIKE arrivals.ArrivalDate)
    NATURAL JOIN Person
)