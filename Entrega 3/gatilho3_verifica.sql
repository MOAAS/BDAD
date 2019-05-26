.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Arrival;
SELECT * FROM Departure;

Insert into Trip values(9000, 'MAD', '2020-10-10', '12:00', '2020-10-10', '14:30', 1, 30, 34, 24, 0); --  34, 24 : Runway, Gate : Departure nao interessa 
Insert into Trip values(9001, 'MAD', '2020-10-10', '13:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0); -- 34, 24 : Runway, Gate : Arrival nao interessa 

Insert into Arrival values(9000, 29, '2020-10-10', '14:30');
Insert into Departure values(9001);


-- Falha arrival, falha departure
Insert into Trip values(9005, 'MAD', '2020-10-10', '13:00', '2020-10-10', '14:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9005, 29, '2020-10-10', '14:45');
Insert into Departure values(9005);

-- Ambos sao permitidos
Insert into Trip values(9010, 'MAD', '2020-10-10', '12:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0);
Insert into Trip values(9011, 'MAD', '2020-10-10', '12:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9010, 29, '2020-10-10', '14:50');
Insert into Departure values(9011);

-- Ambos sao permitidos
Insert into Trip values(9015, 'MAD', '2020-10-11', '13:00', '2020-10-11', '14:30', 1, 30, 34, 24, 0);
Insert into Trip values(9016, 'MAD', '2020-10-11', '13:00', '2020-10-11', '14:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9015, 29, '2020-10-11', '14:55');
Insert into Departure values(9016);

-- Departure falha, arrival funciona
Insert into Trip values(9020, 'MAD', '2020-10-10', '13:00', '2020-10-10', '14:31', 1, 30, 34, 24, 0);
Insert into Departure values(9020);
Insert into Arrival values(9020, 29, '2020-10-10', '14:59');

SELECT * FROM Arrival;
SELECT * FROM Departure;
