
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After do
  page.driver.browser.manage.delete_all_cookies
end

Before do
  @start_time = Time.now
end

After do
  end_time = Time.now
  duration = (end_time - @start_time).to_i
  puts "Scenario took #{duration} seconds to execute."
end
#After('') do |scenario|

#  logout_xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
#  find(:xpath, logout_xpath).click
#  puts "After hook executed for scenario: #{scenario.name}"
#end