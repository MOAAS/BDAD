Drop trigger IF EXISTS R2;

Create Trigger R2
Before Insert On Ticket
When 10 < (Select count(*) FROM (Ticket NATURAL JOIN Trip NATURAL JOIN Airplane NATURAL JOIN AirplaneModel)  WHERE TripID = new.TripID)
Begin
    Select raise(ignore);
End;
