Feature: Sign up for an free-account 
  As a anonymous User
  I want to register me for a free-account
  In order to get a personal and secure area

  Background:
    Given I have no cookies
    When I visit "http://www-test.shrnts.de/"
      And I click "Gratisversion"
      And I fill in "Vorname" with "hans"
      And I fill in "Name" with "wurst"
      And I fill in "Email" with "hw@asdasd.de"
      And I fill in "Passwort" with "my_pass"

  Scenario: Sign up with false password_confirmation 
     When I fill in "Passwort wiederholen" with "my_passsss"
      And I accept the general terms and conditions
      And I accept the data privacy agreement
      And I press "Account anlegen"
    Then I should see "Bitte das gleiche Passwort wie oben angeben"

  Scenario: Sign up without accepting general terms
    When I fill in "Passwort wiederholen" with "my_pass"
      And I accept the data privacy agreement
      And I press "Account anlegen"
    Then I should see "Bitte zustimmen, du arsch!"

  Scenario: Sign up with correct confirmation 
    When I fill in "Passwort wiederholen" with "my_pass"
      And I accept the general terms and conditions
      And I accept the data privacy agreement
      And I press "Account anlegen"
    Then I should see "Ihr gratis ShareNotes Account wurde angelegt."
      And I should see "Vielen Dank für die Registrierung"


