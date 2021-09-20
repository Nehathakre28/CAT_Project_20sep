Feature: My Feature


Background: 
Given I assign "telnet" to variable "terminal_protocol"
Then I assign "10.3.10.133:4650" to variable "terminal_server"
And I assign "AAA001" to variable "devcode"


Scenario: Scenario Name
Given I "Terminal Open"
	When I open terminal connected to $terminal_server with answerback $devcode
	Then I wait 10 seconds
	Then I execute scenario "Check for Terminal ID Screen"
#Then I enter $devcode in terminal
	Then I wait 10 seconds

Scenario: Check for Terminal ID Screen
#############################################################
# Description: If on the Terminal ID screen, enters the Terminal ID
# MSQL Files:
#	None
# Inputs:
#	Required:
#		devcod - the Device Code to be entered
#	Optional:
#		None
# Outputs:
#	None
#############################################################

If I see "Terminal ID:" on line 1 in terminal within 1 seconds 
	If I see cursor at line 2 column 1 in terminal within 2.5 seconds 
	ElsIf I see "Terminal ID:" in terminal
		Given I press keys "ENTER" in terminal
        Then I verify screen is done loading in terminal within 30 seconds
		If I see "Invalid" in terminal within 2.5 seconds 
			If I see "Enter" in terminal within 2.5 seconds 
			   Then I wait 1 seconds 
			EndIf
			Given I press keys "ENTER" in terminal
			Once I see cursor at line 2 column 1 in terminal
            Then I verify screen is done loading in terminal within 30 seconds
		Endif
	Endif
	Then I enter $devcode in terminal
	Once I do not see "Terminal ID" in terminal
EndIf