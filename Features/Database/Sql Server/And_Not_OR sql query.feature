Feature: My Feature



Scenario: Scenario Name
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " Select * from Employee_Details where Employee_Name='Cycle' and TeamLead_Name = 'Manager' "
Then I assign row 0 column "Employee_ID" to variable "Emp_ID"
Then I echo $Emp_ID
