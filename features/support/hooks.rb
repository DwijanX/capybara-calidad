
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

#probamos de nuevo los escenarios que fueron mas propensos a fallar sin motivo
After('@homeLink') do |scenario|
  if scenario.failed?
    puts "Scenario failed. Retrying once..."
    retry_count = 1

    begin
      case scenario.name
      when /Check reference link "Salon Travel"/
        step 'I click the "Salon Travel" link'
        step 'I should be at the trip advisor page'
      when /Navigate to the Business Travel @ About.com link/
        step 'I click the "Business Travel @ About.com" link'
        step 'I should be redirected to the Business Travel page'
      end
    rescue => e
      if retry_count > 0
        puts "Retry attempt #{retry_count} after failure."
        retry_count -= 1
        retry
      else
        puts "Retry limit reached. Scenario failed."
      end
    end
  end
end

#el default max wait time es 2, lo subimos a 5 por si existe conexion mala de internet
Before do
  Capybara.default_max_wait_time = 5
end

#After('') do |scenario|

#  logout_xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
#  find(:xpath, logout_xpath).click
#  puts "After hook executed for scenario: #{scenario.name}"
#end