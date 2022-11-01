Feature: Log-in
    As a User
    I want to access the platform with my credentials
    So that i can see my data streams

    Scenario: Successful User log-in
        Given that I have account at the website
        And that I am at the login page
        When I fill the field "E-mail" with "email@email.com"
        And I fill the field "Password" with "abacate"
        And click on the "Log-in" button
        Then I should be redirected to my dashboard
 
    Scenario: Unsuccessful User log-in (Empty username)
        Given that I have account at the website
        And that I am at the login page
        When I leave the field "E-mail" empty
        And I fill the field "Password" with "abacate"
        And click on the "Log-in" button
        Then the error message "Please fill in your e-mail" should show up

    Scenario: Unsuccessful User log-in (Empty password)
        Given that I have account at the website
        And that I am at the login page
        When I fill the field "E-mail" with "email@email.com"
        And I leave the field "Password" empty
        And click on the "Log-in" button
        Then the error message "Please fill in your password" should show up

    Scenario: Unsuccessful User log-in (Not registered email)
        Given that I have account at the website
        And that I am at the login page
        When I fill the field "E-mail" with "ema@email.com"
        And I fill the field "Password" with "abacate"
        And click on the "Log-in" button
        Then the error message "This email is not registered" should show up

    Scenario: Unsuccessful User log-in (Wrong password)
        Given that I have account at the website
        And that I am at the login page
        When I fill the field "E-mail" with "email@email.com"
        And I fill the field "Password" with "abacatata"
        And click on the "Log-in" button
        Then the error message "Wrong password" should show up
    
    Scenario: Unsuccessful User log-in (Invalid e-mail)
        Given that I have account at the website
        And that I am at the login page
        When I fill the field "E-mail" with "-[------->+<]>-.-[->+++++<]>++.+++++++..+++.[--->+<]>-----.---[->+++<]>.-[--->+<]>---.+++.------.--------."
        And I leave the field "Password" empty
        And click on the "Sign-up" button
        Then the error message "Please fill in a valid e-mail" should show up