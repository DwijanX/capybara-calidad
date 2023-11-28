Feature: Explore Mercury Tours Services
    In order to explore and utilize various services offered on the Mercury Tours site
    As a customer
    I aim to navigate through different sections to test the options and functionalities.

Background:
    Given I am on the Mercury Tours homepage


@others
Scenario:  Go to Car Rentals page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Car Rentals" button
    Then the Car Rentals page is shown

@others
Scenario:  Go to Destinations page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Destinations" button
    Then the Destinations page is shown


@others
Scenario:  Go to Hotels page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Hotels" button
    Then the Hotels page is shown


@others
Scenario:  Go to Vacations page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Vacations" button
    Then the Vacations page is shown

@others
Scenario:  Go to Cruises page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Cruises" button
    Then the Cruises page is shown