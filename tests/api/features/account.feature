Feature: Get Account Information
  In order to get Information about my Account
  As a ShareNotes Client
  I want to call account.json

  Scenario: with valid credentials                   
    Given i am a valid user                          
    When i call account.json                         
    Then the response body should contain an account key
    And the response code should be 200

  Scenario: with invalid credentials               
    Given i am an invalid user                     
    When i call account.json                       
    Then the response body should contain an error key
    And the response code should be 405

  Scenario: without credentials                          
    Given i didnt enter any credentials                  
    When i call account.json                            
    Then the response body should contain an error key      
    And the response body should not contain an account key
    And the response code should be 404                  
