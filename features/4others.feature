Feature: Explore Mercury Tours Services
    In order to explore and utilize various services offered on the Mercury Tours site
    As a customer
    I aim to navigate through different sections to test the options and functionalities.

Background:
    Given I am on the Mercury Tours homepage
    Given I enter my user and password
    When I press the "Sign-In" button


@others
Scenario:  Click on the "Car Rentals" button on the left navigation menu
    When I press the "Car Rentals" button
    Then the "Car Rentals" page is shown

@others
Scenario:  Click on the "Destinations" button on the left navigation menu
    When I press the "Destinations" button
    Then the "Destinations" page is shown


@others
Scenario:  Click on the "Hotels" button on the left navigation menu
    When I press the "Hotels" button
    Then the "Hotels" page is shown


@others
Scenario:  Click on the "Vacations" button on the left navigation menu
    When I press the "Vacations" button
    Then the "Vacations" page is shown

@others
Scenario:  Click on the "Cruises" button on the left navigation menu
    When I press the "Cruises" button
    Then the "Cruises" page is shown