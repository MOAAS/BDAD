Create Trigger R1
Before Insert On Arrival
For Each Row
When exists (
    SELECT * FROM Departure WHERE (
        (RunwayID = new.RunwayID OR
        GateID = new.GateID) AND
        DepartureDate = new.ArrivalDate AND 
        DepatureTime = new.ArrivalTime
    )
)
OR exists (
    SELECT * FROM Arrival WHERE (
        (RunwayID = new.RunwayID OR
        GateID = new.GateID) AND
        ArrivalDate = new.ArrivalDate AND 
        ArrivalTime = new.ArrivalTime
    )
)
Begin
    Select raise(ignore);
End