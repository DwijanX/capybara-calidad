Feature: Mercury Tours Homepage Validation
    In order to ensure the functionality and display of key elements on the Mercury Tours website
    As a registered customer
    I want to verify multiple sections and features on the homepage

Background:
    Given I am on the Mercury Tours homepage

@home
Scenario: """ Find Special tours table with Prices:
| Route                        | Price |
|------------------------------|-------|
| Atlanta to Las Vegas          | $398  |
| Boston to San Francisco       | $513  |
| Los Angeles to Chicago        | $168  |
| New York to Chicago           | $198  |
| Phoenix to San Francisco      | $213  | """
    Then I should see the specials table displayed
    Then I should be able to check the tour and price for the first row

@home
Scenario: Find Jul 6, 2017 date on top right of the homepage
    Then I should be able to see the date 

@home
Scenario: Find the "One Cool Summer in Aruba" Banner and Featured Image
    Then I should be able to see the page banner
    Then I should be able to see the Featured Destination

@home
Scenario: See the HTML logo as the webpage version image
    Then I should be able to see the "HTML version" image

@home
Scenario: Find the Rent a Car advertising on the left of the homepage
    Then I should be able to see the "rent a car" image

@homeLink
Scenario: Check reference link "Salon Travel"
    Given I click the "Salon Travel" link
    Then I should be at the trip advisor page

@homeLink
Scenario: Navigate to the Business Travel @ About.com link
    Given I click the "Business Travel @ About.com" link
    Then I should be redirected to the Business Travel page

@home
Scenario: Verify if all images load on homepage: Destination, Vacation, Register, Tour
    Then I should be able to see the image under the "Destination" subtitle
    Then I should be able to see the image under the "Vacation" subtitle
    Then I should be able to see the image under the "Register" subtitle
    Then I should be able to see the image under the "Tour Tips" subtitle

@home
Scenario: Verify if all text loads on homepage: Destination, Vacation, Register, Tour
    Then I should be able to see the text under the "Destination" subtitle
    Then I should be able to see the text under the "Vacation" subtitle
    Then I should be able to see the text under the "Register" subtitle
    Then I should be able to see the text under the "Tour Tips" subtitle
