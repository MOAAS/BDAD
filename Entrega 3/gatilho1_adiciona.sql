PRAGMA foreign_keys = ON;

Create Trigger TicketTrigger
After insert on Ticket
Begin
    Update Ticket
    Set HasCheckedIn = 0, HasEnteredBoardingZone = 0, HasBoarded = 0
    Where TripID = new.TripID AND SeatRow = new.SeatRow AND SeatLetter = new.SeatLetter AND EXISTS (Select TripID FROM Departure Where TripID = new.TripID);
    Update Ticket
    Set HasCheckedIn = NULL, HasEnteredBoardingZone = NULL, HasBoarded = NULL
    Where TripID = new.TripID AND SeatRow = new.SeatRow AND SeatLetter = new.SeatLetter AND EXISTS (Select TripID FROM Arrival Where TripID = new.TripID);
End;