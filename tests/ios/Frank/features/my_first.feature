Feature: Add things to list
  As a Greymind user
  I want to add things to my list
  So I dont have to hold them in mind

Scenario: Add a thing
  Given I launch the app
  Then I should see 3 rows in section 0
  When I press the plus button
  Then I should see 4 rows in section 0
  When I press the plus button
  Then I should see 5 rows in section 0
