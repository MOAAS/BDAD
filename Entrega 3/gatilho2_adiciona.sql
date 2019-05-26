PRAGMA foreign_keys = ON;

Create Trigger EmployeeTrigger
After Delete on Employee
When 
 (Select count(*) FROM Employee WHERE WorkplaceID = old.WorkplaceID) = 0 
 AND exists 
 (Select count(*) as Count FROM Employee GROUP BY WorkplaceID HAVING(Count > 1))
Begin
    Update Employee
    Set WorkplaceID = old.WorkplaceID
    Where PersonID = (Select PersonID FROM Employee GROUP BY WorkplaceID HAVING(count(*) > 1) ORDER BY count(*) DESC LIMIT 1); -- 
End;