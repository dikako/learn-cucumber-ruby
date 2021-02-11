Feature: Data Tables

    @horizontal
    Scenario: Add numbers in a horizontal tables
        Given a list of numbers on table
            | 1 | 3 | 5 |
        Then the total for the horizontal list is "9"

    @vertical
    Scenario: Add numbers vertically
        Given a list of numbers on table
            | 1 |
            | 2 |
            | 4 |
        Then the total for the vertical list is "7"

    @2-dimensional
    Scenario: add numbers in a 2D array
        Given a list of numbers on table
            |1|3|5|
            |2|6|3|
            |4|2|2|
        Then the total for all numbers in 2D array is "28"