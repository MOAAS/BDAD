-- Por cada TripID, mostra os balcoes de check-in correspondentes

SELECT TripID, CheckInName FROM Departure JOIN Trip USING(TripID) JOIN Airplane USING(AirplaneID) JOIN HasCheckInDesk USING(AirlineID) JOIN CheckInDesk ON HasCheckInDesk.DeskID = CheckInDesk.WorkplaceID;