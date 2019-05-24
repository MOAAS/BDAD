-- Lista de passageiros que sempre viajaram 1ª classe (2 maneiras de fazer a prof que escolha)

SELECT * FROM Passenger WHERE PassengerID NOT IN (SELECT PassengerID FROM Ticket WHERE ClassID != 2);
SELECT * FROM Passenger WHERE NOT EXISTS (Select PassengerID FROM Ticket WHERE PassengerID = Passenger.PassengerID AND ClassID != 2);
