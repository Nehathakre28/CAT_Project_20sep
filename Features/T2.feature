Feature: My Feature

Background: 
Given I assign "10.3.10.133:4650" to variable "terminal_server"
	Then I assign "ART001" to variable "devcode"
	Then I assign "NEHA.THAKRE" to variable "username"
	And I assign "Nthakre@123" to variable "password"


Scenario: open terminal
Given I "open terminal"
	When I open terminal connected to $terminal_server with answerback $devcode

	Then I wait 10 seconds
	Then I enter $devcode in terminal
	And I wait 5 seconds
	Then I enter $username in terminal
 	And I wait 5 seconds
	Then I enter $password in terminal
	And I wait 5 seconds
