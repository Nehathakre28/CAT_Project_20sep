Feature: Connection_string Feature


@select
Scenario: Select Scenario
 Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL "select * from Employee_Details"
And I assign row 1 column "Employee_Name" to variable "NAME"
Then I echo $NAME


@insert
Scenario: Insert Scenario 
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"

And I execute SQL "use Test_Cycle;"
Then I execute SQL "INSERT INTO Employee_Details (Employee_ID, Employee_Name) VALUES (10, 'Payal G');"

@update
Scenario: Update Scenario 
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"

And I execute SQL "use Test_Cycle;"
Then I execute SQL "UPDATE Employee_Details SET TeamLead_Name = 'Nikhilesh R' WHERE Employee_ID= 10;"

# Then I execute SQL "UPDATE Users SET Employee_ID = '1' WHERE PersonID= 2;"



@delete
Scenario:  Delete Scenario 
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"

And I execute SQL "use Test_Cycle;"
Then I execute SQL "DELETE FROM   Employee_Details  WHERE Employee_ID= 4;"