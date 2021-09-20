Feature: My Feature


Background: 
Given I assign "10.3.10.133:4650" to variable "terminal_server"
Then I assign "CYC_AS001" to variable "devcode"
Then I assign "NEHA.THAKRE" to variable "username"
Then I assign "Nthakre@123" to variable "password"
And I assign "CYCPALLOC7" to variable "location"


Scenario: Scenario Name
Given I "login terminal"
Then I open terminal connected to $terminal_server  with answerback $devcode

And I wait 10 seconds
Then I enter $devcode in terminal

And I wait 5 seconds

 Then I enter $username in terminal
 And I wait 5 seconds

Then I enter $password in terminal
And I wait 5 seconds
Then I enter $location in terminal
# And I wait 10 seconds
Then I close terminal


then I see "text" in terminal
Then I copy terminal line <LINE_NUMBER> from column <COLUMN_START_NUMBER> through next <NUMBER> columns to variable "<VARIABLE_NAME>"

Then I verify screen is done loading in terminal within <NUMBER> seconds
Then I press keys Enter in terminal
Then I enter "<TEXT>" in terminal
Then I see cursor at line <LINE_NUMBER> column <COLUMN_NUMBER> in terminal