Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background:
    Given I am on the Mercury Tours homepage

@login
Scenario: Register a user on site
	Given I click the "Register" link
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

@login
Scenario: Login with a register user
    Given I enter my user and password
    When I press the "Sign-In" button
    Then the login successfully message is displayed

@login
Scenario: Register a user on site
	Given I click the "SIGN-ON" link
	And I enter my user and password
	When I press the Submit button
    Then the login successfully message is displayed

# desde aqui son pruebas adicionales al del ejemplo base
@home
Scenario: Check Specials Table on Homepage
    Then I should see the specials table displayed

@home
Scenario: Find Special Item with Price
    Given I should be able to see the specials table
    Then I should be able to check the tour and price for the first row

@home
Scenario: Find The date
    Then I should be able to see the date 

@home
Scenario: Find the main page Banner
    Then I should be able to see the page banner

@home
Scenario: Find the main Fetured Destination Image
    Then I should be able to see the Featured Destination

@home
Scenario: Find the HTML version image
    Then I should be able to see the HTML version image

@home
Scenario: Find the Rent a car image
    Then I should be able to see the rent a car image

@home 
Scenario: Check extra links of the page
	Given I click the "Salon Travel" link
    Then I should be able to see trip advisor page

@home
Scenario: Verify image under the Destination subtitle
    Then I should be able to see the image under the Destination subtitle

@home
Scenario: Verify image under the Vacation subtitle
    Then I should be able to see the image under the Vacation subtitle

@home
Scenario: Verify image under the Register subtitle
    Then I should be able to see the image under the Register subtitle

@home
Scenario: Verify image under the Tour Tips subtitle
    Then I should be able to see the image under the Tour Tips subtitle

@home
Scenario: Verify text under the Tour Tips subtitle
    Then I should be able to see the text under the Tour Tips subtitle

@home
Scenario: Navigate to the Business Travel @ About.com link
    Given I click the "Business Travel @ About.com" link
    Then I should be redirected to the Business Travel page

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

@flights
Scenario: Find a flight with a registered user
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button
    When I press the "findFlights" button
    Then the result message is displayed


@flights
Scenario: Find a flight with a registered user and go back home
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button
    When I press the "findFlights" button
    When I press the "BACK TO HOME" button
    Then the Home screen is shown

@flights
Scenario: Press All Buttons on Flight Details Page
    Given I enter my user and password
    When I press the "Sign-In" button
    When I press the "Flights" button
    When I select "3" passengers
    When I select "London" as the departing location
    When I select "New York" as the returning location
    When I choose "Business class" as the service class
    When I select "Unified Airlines" as the airline preference
    When I press the "findFlights" button
    Then the result message is displayed

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