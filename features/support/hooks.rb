
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After('@homeLink') do |scenario|
  if scenario.failed?
    case scenario.name
    when /Check reference link "Salon Travel"/
      puts "The Salon Travel link failed to load."
    when /Navigate to the Business Travel @ About.com link/
      puts "The Business Travel @ About.com link redirection failed."
    end
  end
end