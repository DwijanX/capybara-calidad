Feature: Mercury Tours Flight Booking Verification
    In order to personally book my preferred flights on the Mercury Tours site
    As a registered user
    I aim to validate the booking process to ensure a smooth and successful experience
    
Background:
    Given I am on the Mercury Tours homepage
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button

@flights
Scenario: Find a flight with a registered user and go back home
    When I press the "findFlights" button
    When I press the "BACK TO HOME" button
    Then the Home screen is shown

@flights
Scenario: Press All Buttons on Flight Details Page
    And I select "3" passengers
    And I select "London" as the departing location
    And I select "New York" as the returning location
    And I choose "Business class" as the service class
    And I select "Unified Airlines" as the airline preference
    And I press the "findFlights" button
    Then the result message is displayed

@flights
Scenario: Find a flight with a registered user
    When I press the "findFlights" button
    Then the result message is displayed