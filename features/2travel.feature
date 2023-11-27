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

# desde aqui son pruebas adicionales al del ejemplo base
@home
Scenario: Check Specials Table on Homepage
    Given I am on the Mercury Tours homepage
    Then I should see the specials table displayed

@home
Scenario: Find Special Item with Price
    Given I am on the Mercury Tours homepage
    And I should be able to see the specials table
    Then I should be able to check the tour and price for the first row

@home
Scenario: Find The date
    Given I am on the Mercury Tours homepage
    Then I should be able to see the date 

Scenario: Find the main page Banner
    Given I am on the Mercury Tours homepage
    Then I should be able to see the page banner

Scenario: Find the main Fetured Destination Image
    Given I am on the Mercury Tours homepage
    Then I should be able to see the Featured Destination


Scenario: Find the HTML version image
    Given I am on the Mercury Tours homepage
    Then I should be able to see the HTML version image

Scenario: Find the Rent a car image
    Given I am on the Mercury Tours homepage
    Then I should be able to see the rent a car image


@new 
Scenario: Check extra links of the page
    Given I am on the Mercury Tours homepage
	And I click the "Salon Travel" link
    Then I should be able to see trip advisor page


@links
Scenario: Go to support page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "SUPPORT" button
    Then the support page is shown

@links
Scenario: Go to contact page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "CONTACT" button
    Then the contact page is shown

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

@others
Scenario:  Go to Car Rentals page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Car Rentals" button
    Then the Car Rentals page is shown

@others
Scenario:  Go to Destinations page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Destinations" button
    Then the Destinations page is shown


@others
Scenario:  Go to Hotels page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Hotels" button
    Then the Hotels page is shown


@others
Scenario:  Go to Vacations page
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    When I press the "Sign-In" button
    When I press the "Vacations" button
    Then the Vacations page is shown





@nico
Scenario: Verify image under the Destination subtitle
    Given I am on the Mercury Tours homepage
    Then I should be able to see the image under the Destination subtitle

@nico
Scenario: Verify image under the Vacation subtitle
    Given I am on the Mercury Tours homepage
    Then I should be able to see the image under the Vacation subtitle

@nico
Scenario: Verify image under the Register subtitle
    Given I am on the Mercury Tours homepage
    Then I should be able to see the image under the Register subtitle

@nico
Scenario: Navigate to the Business Travel @ About.com link
    Given I am on the Mercury Tours homepage
    When I click the "Business Travel @ About.com" link
    Then I should be redirected to the Business Travel page

@nico
Scenario: Verify image under the Tour Tips subtitle
    Given I am on the Mercury Tours homepage
    Then I should be able to see the image under the Tour Tips subtitle

@nico
Scenario: Verify text under the Tour Tips subtitle
    Given I am on the Mercury Tours homepage
    Then I should be able to see the text under the Tour Tips subtitle