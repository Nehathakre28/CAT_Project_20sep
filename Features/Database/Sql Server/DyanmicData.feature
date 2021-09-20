Feature: My Feature



Scenario: Scenario Name

Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"
And I execute SQL "use Test_Cycle;"
Then I assign "Neha Thakre" to variable "Emp_name"
And I execute SQL "INSERT INTO Employee_Details (Employee_ID, Employee_Name) VALUES (3, ' " $Emp_name " ');"