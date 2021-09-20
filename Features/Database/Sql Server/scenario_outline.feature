Feature: scenario_outline Feature


@usingsqlscripts
Scenario Outline: SQL Test
# GetUserCred.sql contain test data 
SQL Examples:Datasets\GetUserCred.sql connected to Sql_Instance logged in as Sql_server


Given I open "Chrome" web browser
And I navigate to "https://my.cycleautomation.com" in web browser within 60 seconds
And I type <Username> in element "id:emailField" in web browser
And I type <PasswordText> in element "id:passwordField" in web browser
When I click element "id:loginButton" in web browser
And I wait 10 seconds
Then I see title contains "Licenses" in web browser within 3 seconds
Then I close web browser



@usingCSV
Scenario Outline: Scenario Outline Name

CSV Examples: Datasets\DataInputs.csv

Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"
And I execute SQL "use Test_Cycle;"
Then I assign <Designation> to variable "Designation_Name"
Then I execute SQL "UPDATE Employee_Details SET Designation = ' " $Designation_Name "'   WHERE Employee_ID= 1;"


@bulkdata
Scenario Outline: Scenario Outline Name

CSV Examples: Datasets\DatainsertSql.csv
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"

And I execute SQL "use Test_Cycle;"

Then I assign all chevron variables to dollar variables

And I execute SQL "INSERT INTO Employee_Details(Employee_ID,Employee_Name,TeamLead_Name) VALUES ('" $Employee_ID "' , '" $Employee_Name "','" $TeamLead_Name "');"