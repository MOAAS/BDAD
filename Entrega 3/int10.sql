-- Por cada TripID, mostra os balcoes de check-in correspondentes e o numero de bilhetes

.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS TEMP_TABLE;
CREATE Temporary Table TEMP_TABLE AS 
SELECT
  Trip.TripID AS TripID,
  CASE WHEN Trip.TripID NOT IN (SELECT TripID FROM Ticket) THEN 0 ELSE count(*) END AS NumTickets
FROM  Trip LEFT OUTER JOIN Ticket ON Trip.TripID = Ticket.TripID 
GROUP BY Trip.TripID;

SELECT TripID, NumTickets, AirlineName, CheckInName 
FROM Departure JOIN Trip USING(TripID) JOIN TEMP_TABLE USING(TripID) JOIN Airplane USING(AirplaneID) JOIN Airline USING(AirlineID) JOIN HasCheckInDesk USING(AirlineID) JOIN CheckInDesk ON HasCheckInDesk.DeskID = CheckInDesk.WorkplaceID;