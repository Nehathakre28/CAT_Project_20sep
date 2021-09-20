Feature: My Feature



Scenario: Scenario Name
Given I connect to Microsoft SQLServer database "Test_Cycle" at "localhost:1433" logged in as "sa" with password "admin@123"


# And I execute SQL "use Test_Cycle;"
# Then I execute SQL "CREATE TABLE Users1 ( PersonID int, Username varchar(255), PasswordText varchar(255) );"
# Then I execute SQL "INSERT INTO Users1 (PersonID, Username,PasswordText) VALUES (2, 'Cycle','cyc@123' );"
# Then I execute SQL "select * from Users1"
# And I assign row 0 column "Username" to variable "NAME"
# Then I echo $NAME