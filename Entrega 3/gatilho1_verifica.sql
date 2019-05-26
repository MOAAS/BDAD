.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Ticket;

Insert INTO Ticket values(10, 6, 12, 'Z', 10, 10, 10, 0);
Insert INTO Ticket values(10, 26, 12, 'Z', 10, 10, 10, 0);

SELECT * FROM Ticket;
