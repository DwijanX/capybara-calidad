
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  if scenario.failed?
    screenshot = "screenshot_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Screenshot of the error')
  end
end
#After('') do |scenario|

#  logout_xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
#  find(:xpath, logout_xpath).click
#  puts "After hook executed for scenario: #{scenario.name}"
#end