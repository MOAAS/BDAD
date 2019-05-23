Drop Trigger if exists ARRIVAL_TRIGGER_NO_DUPLICATES_FOR_RUNWAY_OR_GATE;
Create Trigger ARRIVAL_TRIGGER_NO_DUPLICATES_FOR_RUNWAY_OR_GATE
Before Insert On Arrival
When exists (
    SELECT * FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT * FROM Trip NATURAL JOIN Arrival WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        ArrivalDate = newTrip.ArrivalDate AND 
        ArrivalTime = newTrip.ArrivalTime
    )
)
OR exists (
    SELECT * FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT * FROM Trip NATURAL JOIN Departure WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        DepartureDate = newTrip.ArrivalDate AND 
        DepartureTime = newTrip.ArrivalTime
    )
)
Begin
    Select raise(abort, 'Duplicate Runway or Gate for arrival!');
End;

Drop Trigger if exists DEPARTURE_TRIGGER_NO_DUPLICATES_FOR_RUNWAY_OR_GATE;
Create Trigger DEPARTURE_TRIGGER_NO_DUPLICATES_FOR_RUNWAY_OR_GATE
Before Insert On Departure
When exists (
    SELECT * FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT * FROM Trip NATURAL JOIN Arrival WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        ArrivalDate = newTrip.DepartureDate AND 
        ArrivalTime = newTrip.DepartureTime
    )
)
OR exists (
    SELECT * FROM Trip AS newTrip WHERE TripID = new.TripID AND EXISTS (
        SELECT * FROM Trip NATURAL JOIN Departure WHERE         
        (RunwayID = newTrip.RunwayID OR
        GateID = newTrip.GateID) AND
        DepartureDate = newTrip.DepartureDate AND 
        DepartureTime = newTrip.DepartureTime
    )
)
Begin
    Select raise(abort, 'Duplicate Runway or Gate for departure!');
End;

Insert into Trip values(9000, 'MAD', '2020-10-10', '12:00', '2020-10-10', '14:30', 1, 30, 34, 24, 0); --  34, 24 : Runway, Gate : Departure nao interessa 
Insert into Trip values(9001, 'MAD', '2020-10-10', '13:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0); -- 34, 24 : Runway, Gate : Arrival nao interessa 

Insert into Arrival values(9000, 29, '2020-10-10', '14:30');
Insert into Departure values(9001);


Insert into Trip values(9005, 'MAD', '2020-10-10', '13:00', '2020-10-10', '14:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9005, 29, '2020-10-10', '14:45');
Insert into Departure values(9005);

Insert into Trip values(9010, 'MAD', '2020-10-10', '12:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9010, 29, '2020-10-10', '14:50');
Insert into Departure values(9010);

Insert into Trip values(9015, 'MAD', '2020-10-11', '12:00', '2020-10-10', '13:30', 1, 30, 34, 24, 0);
Insert into Arrival values(9015, 29, '2020-10-10', '14:55');
Insert into Departure values(9015);

Insert into Trip values(9020, 'MAD', '2020-10-10', '12:00', '2020-10-10', '13:31', 1, 30, 34, 24, 0);
Insert into Departure values(9020);
Insert into Arrival values(9020, 29, '2020-10-10', '14:59');





