Drop Trigger if exists EMPLOYEE_TRIGGGGGGG;
Create Trigger EMPLOYEE_TRIGGGGGGG
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

Delete FROM Employee Where Employee.PersonID = 30;
Delete FROM Employee Where Employee.PersonID = 31;
