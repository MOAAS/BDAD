PRAGMA foreign_keys = ON;

Create Trigger ArrivalTrigger
Before Insert On Arrival
When exists (
    SELECT TripID FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT TripID FROM Trip INNER JOIN Arrival Using(TripID) WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        ArrivalDate = newTrip.ArrivalDate AND 
        ArrivalTime = newTrip.ArrivalTime
    )
)
OR exists (
    SELECT TripID FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT TripID FROM Trip INNER JOIN Departure Using(TripID) WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        DepartureDate = newTrip.ArrivalDate AND 
        DepartureTime = newTrip.ArrivalTime
    )
)
Begin
    Select raise(abort, 'Duplicate Runway or Gate for arrival!');
End;

Create Trigger DepartureTrigger
Before Insert On Departure
When exists (
    SELECT TripID FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT TripID FROM Trip INNER JOIN Arrival Using(TripID) WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        ArrivalDate = newTrip.DepartureDate AND 
        ArrivalTime = newTrip.DepartureTime
    )
)
OR exists (
    SELECT TripID FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT TripID FROM Trip INNER JOIN Departure Using(TripID) WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        DepartureDate = newTrip.DepartureDate AND 
        DepartureTime = newTrip.DepartureTime
    )
)
Begin
    Select raise(abort, 'Duplicate Runway or Gate for departure!');
End;