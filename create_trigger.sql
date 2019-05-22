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

Insert into Arrival values(900, "MAD", "2019-06-06", "15:25", "2019-06-06", "16:45", 2, 20, 34, 24, 2);