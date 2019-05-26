-- Devolve Data, Hora, Nomes e IDs de pessoas que em viagens este mes, fizeram check-in mas nao embarcaram --

.mode columns
.headers on
.nullvalue NULL

SELECT Person.PersonName, Passenger.IDnumber, Trip.DepartureDate, Trip.DepartureTime 
FROM Person JOIN Passenger ON Person.PersonID = Passenger.PassengerID NATURAL JOIN Ticket NATURAL JOIN Trip
WHERE Ticket.HasCheckedIn = True AND Ticket.HasBoarded = False AND Trip.DepartureDate LIKE (SELECT strftime('%Y-%m', 'now') || "-%");