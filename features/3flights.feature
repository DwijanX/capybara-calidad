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
Scenario Outline: Press All Buttons before finding flights on Flight Details Page
    And I select "<passengers>" passengers
    And I select "<departing_location>" as the departing location
    And I select "<returning_location>" as the returning location
    And I choose "<service_class>" as the service class
    And I select "<airline_preference>" as the airline preference
    And I press the "findFlights" button
    Then the result message is displayed

Examples:
  | passengers | departing_location | returning_location | service_class   | airline_preference  |
  | 3          | London             | New York            | Business class   | Unified Airlines     |
  | 2          | Paris              | Seattle         | Economy class    | Pangea Airlines      |
  | 4          | New York           | London              | First class       | Blue Skies Airlines  |


@flights
Scenario: Find a flight with a registered user
    When I press the "findFlights" button
    Then the result message is displayed