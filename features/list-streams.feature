Feature: List Streams

    It enables the user to list all streams inside the Amazon Kinesis Streams.
    Further, the user can select one of these streams and manipulate or visualize it.

    Scenario: Successful List

        Given that I have signed-in
        And I am at the liststreams page
		And I click on "load streams" button
        Then I expect to see a list of my data streams