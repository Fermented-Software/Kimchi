Feature: List Streams

    It enables the user to list all streams inside the Amazon Kinesis Streams.
    Further, the user can select one of these streams and manipulate or visualize it.

    Scenario: Successful List
    
        Given that I have signed-in
        And I am at the dashboard page
        And my streams have successfully loaded
        Then I expect to see a list of my data streams

    Scenario: Infrastructure instability

        Given that I have successfully signed-in
        And I am on the dashboard page
        And I make a requisition to list my streams
        And I receive a connection error
        Then I expect to receive a clear and descriptive message of error