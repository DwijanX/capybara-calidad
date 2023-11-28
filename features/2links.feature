Feature: Explore Mercury Tours Online Support
    In order to access and utilize online support features on the Mercury Tours site
    As a customer
    I aim to navigate through the support and contact pages to validate their accessibility and functionality.

Background:
    Given I am on the Mercury Tours homepage


@links
Scenario: Go to support page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "SUPPORT" button
    Then the support page is shown

@links
Scenario: Go to contact page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "CONTACT" button
    Then the contact page is shown