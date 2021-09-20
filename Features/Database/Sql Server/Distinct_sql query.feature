Feature: Distinct_sql query Feature


@countdistinct
Scenario: distinct with count sql query
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " select count( distinct TeamLead_Name) as Count from Employee_Details  "
Then I assign row 0 column "Count" to variable "Count_distinct"
Then I echo $Count_distinct
 
 
 
@distinct
Scenario: Distinct Sql Query
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " select  distinct (TeamLead_Name) as distinctvalue from Employee_Details  "
Then I assign row 0 column "distinctvalue" to variable "distinct_Var"
Then I echo $distinct_Var
Then I assign row 1 column "distinctvalue" to variable "distinct_Var"
Then I echo $distinct_Var

@Count
Scenario: Count Sql Query
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " Select Count(Employee_ID) as TotalCount from Employee_Details  "
Then I assign row 0 column "TotalCount" to variable "Total_Count"
Then I echo $Total_Count