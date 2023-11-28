Feature: Mercury Tours Home page Validation
    In order to ensure the functionality and display of key elements on the Mercury Tours website
    As a registered customer
    I want to verify multiple sections and features in the home page

Background:
    Given I am on the Mercury Tours homepage


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
Scenario: Check reference link "Salon Travel"
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






