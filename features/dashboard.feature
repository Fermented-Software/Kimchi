Feature: Dashboard
  As a User
  I want to access the Dashboard
  So that I can easily view and analyze my data streams

  Scenario: Logged-in user with AWS credentials access dashboard
    Given That I am at the dashboard page
    And I am successfully logged
    And I have my AWS credentials registered
    Then I should have the list of active shards showing as default

  Scenario: Logged-in user without AWS credentials
    Given That I am at the dashboard page
    And I am successfully logged
    And I don't have my AWS credentials registered
    Then I should have the list of active shards selected as default
    Then I should see a message asking to add my AWS credentials

  Scenario: User selects an option on dashboard
    Given That I am at the dashboard page
    And I am successfully logged
    When I click a diferent option on the navbar
    Then I should be redirected to the page of the selected option
