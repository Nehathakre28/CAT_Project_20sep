Feature:Joins In Sql Feature


@innerJoin
Scenario: Inner Join

Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL " Select Employee_Details.Employee_Name,Employee_Details.Employee_ID,Employee_Details.TeamLead_Name,Users.Username from Employee_Details inner join Users on Users.Employee_ID = Employee_Details.Employee_ID "

Then I assign row 0 column "Employee_Name" to variable "Emp_Name"
 Then I echo $Emp_Name
Then I assign row 0 column "Employee_ID" to variable "EmpID"
 Then I echo $EmpID
 Then I assign row 0 column "TeamLead_Name" to variable "TL_Name"
 Then I echo $TL_Name
Then I assign row 0 column "Username" to variable "user_name"
 Then I echo $user_name


@leftjoin
Scenario: Left Join

Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


And I execute SQL "use Test_Cycle;"
Then I execute SQL "Select Employee_Details.Employee_Name,Employee_Details.Employee_ID ,Employee_Details.TeamLead_Name,Users.Username from Employee_Details left join Users on Users.Employee_ID = Employee_Details.Employee_ID"

Then I assign row 0 column "Employee_Name" to variable "Emp_Name"
 Then I echo $Emp_Name
Then I assign row 0 column "Employee_ID" to variable "EmpID"
 Then I echo $EmpID
 Then I assign row 0 column "TeamLead_Name" to variable "TL_Name"
 Then I echo $TL_Name
Then I assign row 0 column "Username" to variable "user_name"
 Then I echo $user_name
