-- Lista de arrivals com respetivos luggagebelts disponiveis

.mode columns
.headers on
.nullvalue NULL

SELECT Arr1.TripID, LuggageBelt.BeltNum AS AvailableBeltNum, Arr1.DropoffDate, Arr1.DropoffTime FROM Arrival AS Arr1, LuggageBelt WHERE NOT EXISTS (
    SELECT Arr2.BeltID FROM Arrival As Arr2 WHERE (
        Arr2.BeltID = LuggageBelt.WorkplaceID AND 
        Arr2.DropoffDate = Arr1.DropoffDate AND 
        Arr2.DropoffTime = Arr1.DropoffTime
    )
)
ORDER BY TripID, LuggageBelt.BeltNum;