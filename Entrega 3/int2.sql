-- Lista de passageiros que sempre viajaram 1ª classe

.mode columns
.headers on
.nullvalue NULL

SELECT Passenger.PassengerID, IDnumber FROM Passenger WHERE NOT EXISTS (Select PassengerID FROM Ticket WHERE PassengerID = Passenger.PassengerID AND ClassID != 2);