Feature: My Feature



Scenario: Scenario Name
When I verify file "<SOURCE_FILE_PATH>" exists within <NUMBER> seconds
And I create file "<FILE_PATH>" with contents "<TEXT_CONTENTS>"
And I assign "" to variable "<VARIABLE_NAME>"
And I create list "<LIST_NAME>"
And I assign 0 to variable "var1"
 While I remove next value from "<FILE_PATH>" and assign to variable "<VARIABLE_NAME>"
 When I append|prepend element "<ADDED_ELEMENT>" to list "<LIST_NAME>"
 EndWhile


