Drop trigger IF EXISTS TRIGGER_THAT_DOES_NOT_LET_PEOPLE_EXCEED_PLANE_CAPACITY_AND_HAS_A_VERY_DESCRIPTIVE_NAME;

Create Trigger TRIGGER_THAT_DOES_NOT_LET_PEOPLE_EXCEED_PLANE_CAPACITY_AND_HAS_A_VERY_DESCRIPTIVE_NAME
Before Insert On Ticket
When (Select count(*) FROM Ticket WHERE TripID = new.TripID) >= (Select Distinct SeatsPerRow * NumRows FROM (Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel)  WHERE TripID = new.TripID) -- num bilhetes >= num lugares
Begin
    Select raise(abort);
End;

Select Distinct AirplaneModel.SeatsPerRow * AirplaneModel.NumRows FROM (Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel)  WHERE TripID = 6;  -- Num available
Select count(*) FROM Ticket WHERE TripID = 6; -- Num Tickets

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


Select Distinct SeatsPerRow * NumRows FROM (Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel)  WHERE TripID = 900;
Select * FROM Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel;