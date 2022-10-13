Feature: Sign in

	Basic credential validation for user log in

    Scenario: Successful sign-in
	
	
        Given that I am at the sign-in page
        When I type my "AWS Access Key"
        And I type my "AWS Secret Key"
        And I press the "login" button
        Then I expect to be redirected to my dashboard

	Scenario: Wrong access key


        Given that I am at the sign-in page
		When I type my "AWS Access Key" incorrectly
		And I type my "AWS Secret Key"
		And I press the "login" button
		Then I expect to receive an error message about wrong "AWS Access Key"

	Scenario: Wrong secret key


        Given that I am at the sign-in page
		And I am at the sign-in page
		When I type my "AWS Access Key" 
		And I type my "AWS Secret Key" incorrectly
		And I press the "login" button
		Then I expect to receive an error message about wrong "AWS Secret Key"
