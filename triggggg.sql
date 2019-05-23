Drop Trigger if exists TICKET_TRIGGER;
Create Trigger TICKET_TRIGGER
After insert on Ticket
Begin
    Update Ticket
    Set HasCheckedIn = 0, HasEnteredBoardingZone = 0, HasBoarded = 0
    Where TripID = new.TripID AND SeatRow = new.SeatRow AND SeatLetter = new.SeatLetter
End