Feature: Explore Mercury Tours Online Support
    In order to access and utilize online support features on the Mercury Tours site
    As a customer
    I aim to navigate through the support and contact pages to validate their accessibility and functionality.

Background:
    Given I am on the Mercury Tours homepage
    Given I enter my user and password
    When I press the "Sign-In" button

@links
Scenario: Click on the "SUPPORT" text on the top navbar element
    When I press the "SUPPORT" button
    Then the "Support" page is shown

@links
Scenario: Click on the "CONTACT" text on the top navbar element
    When I press the "CONTACT" button
    Then the "Contact" page is shown