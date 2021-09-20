Feature: My Feature

Scenario: chrome Image
Given I open "chrome" web browser
	Then I navigate to "https://www.tryonsolutions.com/" in web browser
	Then I see image "Image:images\desktop.png" in web browser
	And I save screenshot
	Then I close web browser

