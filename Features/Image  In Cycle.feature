Feature: Image In Cycle Feature



Scenario: Image Match
Given I open "chrome" web browser
	When I navigate to "https://www.tryonsolutions.com" in web browser
    Then I press keys CTRL+T 
    And I see image "Image:Images\Tryonsolution.PNG" 
    
   
	Then I save screenshot
    And I close web browser


