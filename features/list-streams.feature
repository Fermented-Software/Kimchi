Feature: List-streams
    As a User
    I want to see a list of my data streams
    So that i can analyze them

Scenario: Successful List
Given that I have signed-in
And I am at the dashboard page
And my streams have successfully loaded
Then I expect to see a list of my data streams
