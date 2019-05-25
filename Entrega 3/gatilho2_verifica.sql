.mode columns;
.headers on;
.nullvalue NULL;

PRAGMA foreign_keys = ON;

SELECT * FROM Ticket;

Insert into AirplaneModel values(1000, "GenericNonDuplicateName", 2, 3);
Insert into Airplane values(1001, 0, 1000, "AnotherGenericName");
Insert into Trip values(1002, 'LIS', '2019-05-20', '10:30', '2019-02-30', '10:20', 10, 20, 34, 24, 1001);
Insert into Ticket values(10, 1002, 1, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 2, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 3, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 4, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 5, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 6, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 7, 'F', 0, 0, 0, 1);
Insert into Ticket values(10, 1002, 8, 'F', 0, 0, 0, 1);

SELECT * FROM Ticket;