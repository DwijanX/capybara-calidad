Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options



Scenario: Register a user on site
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
	|First Name: 	    | Pepito             |
    |Last Name: 	    | Perez              |
    |Phone: 	        | 1234-567-12        |
    |Email: 	        | pepe@pepazo.com    |
    |Address:           | Av. America #123   |
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         |
    |Postal Code: 	    | 9897               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    | Pepazo             |
    |Password:          | ILoveQA            |
    |Confirm Password:  | ILoveQA            |
	And send my registration form
	Then the confirmation screen is show
	And my user name is "Pepazo"


Scenario: Login with a register user
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    Then the login successfully message is displayed

Scenario: Register a user on site
	Given I am on the Mercury Tours homepage
	And I click the "SIGN-ON" link
	And I enter my user and password
	When I press the Submit button
    Then the login successfully message is displayed

Scenario: Check Specials Table on Homepage
    Given I am on the Mercury Tours homepage
    Then I should see the specials table displayed

Scenario: Find Special Item with Price
    Given I am on the Mercury Tours homepage
    And I should be able to see the specials table
    Then I should be able to check the tour and price for the first row

@flights
Scenario: Find a flight with a registered user
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button
    When I press the "findFlights" button
    Then the result message is displayed


@flights
Scenario: Find a flight with a registered user and go back home
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button
    When I press the "findFlights" button
    When I press the "BACK TO HOME" button
    Then the Home screen is shown


@links
Scenario: Go to support page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "SUPPORT" button
    Then the Support page is shown

@links
Scenario: Go to contact page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "SUPPORT" button
    Then the Contact page is shown



