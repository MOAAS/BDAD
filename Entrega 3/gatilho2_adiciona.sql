PRAGMA foreign_keys = ON;

Create Trigger CapacityTrigger
Before Insert On Ticket
When (Select count(*) FROM Ticket WHERE TripID = new.TripID) >= (Select Distinct SeatsPerRow * NumRows FROM (Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel)  WHERE TripID = new.TripID) -- num bilhetes >= num lugares
Begin
    Select raise(abort, "Maximum capacity exceeded!");
End;