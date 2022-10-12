Feature: List Streams

    It enables the user to list all streams inside the Amazon Kinesis Streams.
    Further, the user can select one of these streams and manipulate or visualize it.

    Example: you can add one example here if you think it would be useful
    
    Scenario: Successful List
    
        Given that I have signed-in
        And I am at the dashboard page
        And my streams have successfully loaded
        Then I expect to see a list of my data streams