Given(/^I am on the Mercury Tours homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')

end

Given(/^I click the "([^"]*)" link$/) do |linkText|
click_link(linkText)
end

When(/^I enter the required fields as show below$/) do |table|
data = table.rows_hash
data.each_pair do |key, value|
 case key
when "First Name:"
   fill_in 'firstName', :with => value
   @name = value
when "Last Name:"
 fill_in 'lastName', :with => value
 @lastName = value
 when "Phone:"
 fill_in 'phone', :with => value
 when "Email:"
 fill_in 'userName', :with => value
when "Address:"
 fill_in 'address1', :with => value
when "City:"
 fill_in 'city', :with => value
when "State/Province:"
 fill_in 'state', :with => value
when "Postal Code:"
 fill_in 'postalCode', :with => value
when "Country:"
 select(value, :from => 'country')
when "User Name:"
 fill_in 'email', :with => value
 @userName = value
when "Password:"
 fill_in 'password', :with => value
when "Confirm Password:"
 fill_in 'confirmPassword', :with => value
 @password = value
end
end
end

When(/^send my registration form$/) do
xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[17]/td/input'
find(:xpath, xpath_base).click
end

Then(/^the confirmation screen is show$/) do
greeting = "Dear"+" "+@name+" "+@lastName
expect(page).to have_content(greeting)

end

Then(/^my user name is "([^"]*)"$/) do |userName|
puts userName
labelText= "Note: Your user name is "+userName+"."
puts labelText
expect(page).to have_content(labelText)
userNameLabel1 = find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
userNameLabel2 = find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
if (userNameLabel1 == userNameLabel2) & (labelText == userNameLabel1) & (labelText == userNameLabel2)
 puts "Validation for user name: Passed"
else
 raise "Validation for user name: Failed"
 puts "Expected: "+labelText
 puts "Actual:"+userNameLabel1
end
#only for test
puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
end

Given(/^I enter my user and password$/) do
fill_in 'userName', :with => ENV['USER']
fill_in 'password', :with => ENV['PSW']
end

Given(/I should be able to see the specials table/) do
find(:xpath,"/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/table[1]/tbody/tr[3]/td/table/tbody/tr[1]").value
end

When(/^I press the "Sign-In" button$/) do
xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
find(:xpath, xpath).click
end



When(/^I press the Submit button$/) do
xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
find(:xpath, xpath).click
end


When(/^I press the "Flights" button$/) do
find(:xpath, '/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/a').click
end

When(/^I press the "findFlights" button$/) do
 find(:xpath, '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input').click
end
When(/^I press the "BACK TO HOME" button$/) do
xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'
find(:xpath,xpath).click
end


When(/^I press the "SUPPORT" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[3]/a'
  find(:xpath,xpath).click
  end

When(/^I press the "CONTACT" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[4]/a'
  find(:xpath,xpath).click
  end



When(/^I press the "Car Rentals" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/font/a'
  find(:xpath,xpath).click
  end


When(/^I press the "Destinations" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/a'
  find(:xpath,xpath).click
  end

When(/^I press the "Hotels" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/a'
  find(:xpath,xpath).click
  end

When(/^I press the "Vacations" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/a'
  find(:xpath,xpath).click
  end

Then(/^the result message is displayed$/) do
# Implement the step to verify the result message
expect(page).to have_content("After flight finder - No Seats Avaialble")
xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'
find(:xpath,xpath).value
end

Then('I should see the specials table displayed') do
xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/table[1]'
find(:xpath,xpath).value
end

Then('I should be able to check the tour and price for the first row') do
table=find(:xpath,"/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/table[1]/tbody/tr[3]/td/table/tbody/tr[1]")
table.find(:xpath,"./td[1]/font").value
table.find(:xpath,"./td[2]/div/font/b").value
end
Then(/^the login successfully message is displayed$/) do
 expect(page).to have_content("Login Successfully")
 puts "ONLY FOR TEST  PURPOSES"
 puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b').text
 puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[1]/font/b').text
end
Then(/^the Home screen is shown$/) do
expected_url = 'https://demo.guru99.com/test/newtours/index.php'
expect(page).to have_current_path(expected_url)
end
Then('I should be able to see the date') do
dateText= "Jul 6, 2017"
expect(page).to have_content(dateText)
end
Then('I should be able to see the page banner') do
xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[1]/td/img"
find(:xpath,xpath).value
end
Then('I should be able to see the Featured Destination') do
xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/p[1]/img"
find(:xpath,xpath).value
end



Then(/^I should be able to see the "([^"]*)" image$/) do |image|
  if image=="rent a car"
    xpath= "/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/p[3]/img"
  elsif image=="HTML version"
    xpath= "/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/p[2]/img"

  end
  find(:xpath,xpath).value
  
end

Then('I should be at the trip advisor page') do
expected_url = 'https://www.tripadvisor.in/'
assert_current_path(expected_url)
end


Then(/^the "([^"]*)" page is shown$/) do |page|
  if page=="Vacations"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Hotels"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Destinations"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Car Rentals"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Contact"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Support"
    expected_url = 'https://demo.guru99.com/test/newtours/support.php'
    expected_Content="This section of our web site is currently under construction.   Sorry for any inconvienece."
  elsif page=="Cruises"
    expected_url = 'https://demo.guru99.com/test/newtours/index.php'

  end
  if expected_url
    assert_current_path(expected_url)

  end
  if expected_Content
    assert_text(expected_Content)
  end
end

Then(/^I should be able to see the image under the "([^"]*)" subtitle$/) do |subtitle|
  if subtitle=="Destination"
    xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[6]/td/table/tbody/tr/td[1]/img"
  elsif subtitle=="Vacation"
    xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[8]/td/table/tbody/tr/td[1]/img"
  elsif subtitle=="Register"
    xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[10]/td/table/tbody/tr/td[1]/img"
  elsif subtitle=="Tour Tips"
    xpath= "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/table[2]/tbody/tr[3]/td[1]/img"
  end
  find(:xpath,xpath).value
end

Then(/^I should be able to see the text under the "([^"]*)" subtitle$/) do |subtitle|
  if subtitle=="Destination"
    xpath = "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[6]/td/table/tbody/tr/td[2]/font"
    expected_text = "Find detailed information about your destination."
  elsif subtitle=="Vacation"
    xpath = "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[8]/td/table/tbody/tr/td[2]/font"
    expected_text = "Read about our featured vacation destinations."
  elsif subtitle=="Register"
    xpath = "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[10]/td/table/tbody/tr/td[2]/font"
    expected_text = "Register here to join Mercury Tours!"
  elsif subtitle=="Tour Tips"
    xpath = "/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[1]/table[2]/tbody/tr[3]/td[2]/font"
    expected_text = "Always carry a travel first aid kit with bandages, antacids, aspirin, bee sting wipes, and other basic necessities."
  end
  element = find(:xpath, xpath)
  expect(element.text).to eq(expected_text)

end



Then('I should be redirected to the Business Travel page') do
  expected_url = 'http://businesstravel.about.com/mbody.htm?PM=78_101_T&cob=home'
  expect(page).to have_current_path(expected_url)
  end

When(/^I press the "Cruises" button$/) do
  xpath='/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/a'
  find(:xpath,xpath).click
  end



When(/^I select "(\d+)" passengers$/) do |passenger_count|
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[3]/td[2]/b/select'
  find(:xpath, xpath).select(passenger_count)
end

When(/^I select "(.*?)" as the departing location$/) do |departing_location|
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td[2]/select'
  find(:xpath, xpath).select(departing_location)
end

When(/^I select "(.*?)" as the returning location$/) do |returning_location|
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[6]/td[2]/select'
  find(:xpath, xpath).select(returning_location)
end

When(/^I choose "(.*?)" as the service class$/) do |service_class|
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[9]/td[2]/font/font/input[1]'
  find(:xpath, xpath).click
end

When(/^I select "(.*?)" as the airline preference$/) do |airline_preference|
  xpath='/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[10]/td[2]/select'
  find(:xpath, xpath).select(airline_preference)
end