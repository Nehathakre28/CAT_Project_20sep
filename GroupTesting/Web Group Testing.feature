Feature: Web Group Testing

Background: 
Given I import scenarios from "Utilities/Environment.feature"
	Then I execute scenario "Setup Wait Times"
    Then I import scenarios from "GroupTesting\Web Group Testing Utilities.feature"
	And I open "chrome" web browser
	And I maximize web browser


Scenario: Web Group Testing
Given I "login to cycle automation"
	Then I execute scenario "Log into cycle user portal"


