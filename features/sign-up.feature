Feature: Sign-in
    As a User
    I want to access the platform with my credentials
    So that i can see my data streams

    Scenario: Successful User Sign-up
        Given I am at the sign-up page
        When I fill the field "Username" with "Miguel Vasconcelos"
        When I fill the field "Password" with "abcdefg"
        When I fill the field "AWS Key ID" with "AKIAIOSFODNN7EXAMPLE"
        When I fill the field "AWS Key Secret" with "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
        And click on the "Sign-up" button
        Then the data should have been persisted at a database
        And I should be redirected to my dashboard

    Scenario: Unsuccessful User Sign-up (Empty username)
        Given I am at the sign-up page
        When leave the field "Username" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in a password" should show up

    Scenario: Unsuccessful User Sign-up (Empty password)
        Given I am at the sign-up page
        When I fill the field "Username" with "Miguel Vasconcelos"
        And leave the field "Password" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in a password" should show up