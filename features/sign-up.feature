Feature: Sign-up
    As a User
    I want to access the platform with my credentials
    So that i can see my data streams

    Scenario: Successful User Sign-up
        Given I am at the sign-up page
        When I fill the field "E-mail" with "sauron@mordor.arda"
        When I fill the field "Password" with "theonering"
        And click on the "Sign-up" button
        Then the data should have been persisted at a database
        And I should be redirected to my dashboard

    Scenario: Unsuccessful User Sign-up (Empty username)
        Given I am at the sign-up page
        When I leave the field "E-mail" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in your e-mail" should show up

    Scenario: Unsuccessful User Sign-up (Empty password)
        Given I am at the sign-up page
        When I fill the field "E-mail" with "sauron@mordor.arda"
        And I leave the field "Password" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in your password" should show up

    Scenario: Unsuccessful User Sign-up (Invalid e-mail format)
        Given I am at the sign-up page
        When I fill the field "E-mail" with "-[------->+<]>-.-[->+++++<]>++.+++++++..+++.[--->+<]>-----.---[->+++<]>.-[--->+<]>---.+++.------.--------."
        And I leave the field "Password" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in a valid e-mail" should show up
