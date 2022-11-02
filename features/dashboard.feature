Feature: Dashboard
  As a User
  I want to access the Dashboard
  So that I can easily view and analyze my data streams

  Scenario: Logged-in user with AWS credentials access dashboard
    Given That I am at the dashboard page
#    And I am successfully logged
#    And I have my AWS credentials registered
    Then I should see a welcome message on the page

  Scenario: Logged-in user without AWS credentials
    Given That I am at the dashboard page
#    And I am successfully logged
#    And I don't have my AWS credentials registered
#    Then I should see a message asking for my AWS credentials

  Scenario: User selects an option on dashboard
    Given That I am at the dashboard page
#    And I am successfully logged
    When I click on the "list" anchor on Navbar
    Then I should be redirected to "/data-streams"
