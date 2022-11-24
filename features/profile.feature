Feature: Profile
    As a User
    I want to access my profile page
    So that I can see all information and credentials saved for my account

    Scenario: Successful Page Load With Credentials
        Given that I have an account at the website
        And that I am logged in
        And that I am at the profile page
        And that I have AWS credentials saved
        Then I should see all my profile information
        And I should see my AWS credentials

    Scenario: Successful Page Load With Credentials
        Given that I have an account at the website
        And that I am logged in
        And that I am at the profile page
        Then I should see all my profile information
        And I should see a notice saying I have no AWS credentials saved

    Scenario: Unsuccessful Page Load
        Given that I am at the profile page
        Then I should see an unauthorized error page
