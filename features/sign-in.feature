Feature: Sign-in
    As a User
    I want to access the platform with my credentials
    So that i can see my streamed messages

    Scenario: Successful Sign-in
        Given that I have a valid AWS account
        And I am at the sign-in page
        When I type my "AWS Access Key"
        And I type my "AWS Secret Key"
        And I press the "login" button
        Then I expect to be redirected to my dashboard