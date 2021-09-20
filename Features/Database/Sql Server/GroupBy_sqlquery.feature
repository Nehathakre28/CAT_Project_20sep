Feature: My Feature


@groupby
Scenario: Scenario Name
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " SELECT COUNT(Employee_ID) as Emp_Count, Employee_Name FROM Employee_Details  where  Employee_Name='Cycle' GROUP BY Employee_Name"
Then I assign row 0 column "Emp_Count" to variable "EmpCount"
Then I echo $EmpCount



@groupbyusingleftjoin
Scenario: Scenario Name

Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " SELECT Employee_Details.Employee_Name,COUNT(Users.PersonID) AS Numberofperson FROM Users left JOIN Employee_Details ON Users.Employee_ID = Employee_Details.Employee_ID GROUP BY Employee_Name; "

Then I assign row 0 column "Numberofperson" to variable "Number_of_person"
Then I echo $Number_of_person 