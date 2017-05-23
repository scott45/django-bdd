Feature: System interaction
  As a standard user
  I want to login
  So i can see the homepage

 Background:
   Given There are no users in the system
   And No home page has been made yet

 Scenario: Get username by name
    Given I am not logged in as a user
    When I type in my name
    Then It is recognized

Scenario: Get username by email
    Given I am not logged in as a user
    When I type in my email
    Then It is recognized

 Scenario: No name and email
    Given I am not logged in as a user
    When I type in my name and email
    Then I am not authenticated

Scenario: No html
    Given I am a logged in user
    When I navigate to templates folder
    Then I don't find the ftml file

