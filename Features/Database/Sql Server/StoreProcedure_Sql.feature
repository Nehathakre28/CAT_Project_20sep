Feature: StoreProcedure_Sql Feature




@Selectstoreprocedure
Scenario: Select Store procedure
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " SelectAllEmployee  "
Then I assign row 1 column "Employee_Name" to variable "Emp_Name"
Then I echo $Emp_Name
