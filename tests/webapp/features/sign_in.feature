Feature: Sing into the webapp
  As an unauthenticated user with an account
  I want to sign into the webapp
  So that I can access my personal data

  Scenario: With valid credentials
    Given I have no cookies
    When I visit "http://webapp.sharenotes.de"
    And I fill in "user_session_email" with "rl@gobas.de"
    And I fill in "user_session_password" with "testpass"
    And I press "Einloggen"
    Then I should see "Abmelden"
    And my wife should be dead

  Scenario: With invalid credentials
    Given I have no cookies
    When I visit "http://webapp.sharenotes.de"
    And I fill in "user_session_email" with "rl@gobas.de"
    And I fill in "user_session_password" with "testpasssss"
    And I press "Einloggen"
    Then I should not see "Abmelden"

