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
Scenario: Find Jul 6, 2017 date on top right of the homepage
    Then I should be able to see the date 

@home
Scenario: Find the "one cool summer in Aruba" main page Banner
    Then I should be able to see the page banner

@home
Scenario: Find the main Fetured Destination "Aruba" Image
    Then I should be able to see the Featured Destination

@home
Scenario: see the HTML logo as the webpage version image
    Then I should be able to see the HTML version image

@home
Scenario: Find the Rent a car advertising on the left of the homepage
    Then I should be able to see the rent a car image

@home 
Scenario: Check reference link "Salon Travel"
	Given I click the "Salon Travel" link
    Then I should be able to see trip advisor page

@home
Scenario: Navigate to the Business Travel @ About.com link
    Given I click the "Business Travel @ About.com" link
    Then I should be redirected to the Business Travel page

@home
Scenario: Verify if all images load on homepage: Destination, Vacation, Register, Tour
    Then I should be able to see the image under the Destination subtitle
    Then I should be able to see the image under the Vacation subtitle
    Then I should be able to see the image under the Register subtitle
    Then I should be able to see the image under the Tour Tips subtitle

@home
Scenario: Verify if all text load on homepage: Destination, Vacation, Register, Tour
    Then I should be able to see the text under the Tour Tips subtitle








