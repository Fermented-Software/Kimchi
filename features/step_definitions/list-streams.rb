When('click on {string} button') do |button_name|
  click_on button_name
end

Given('that I have signed-in') do
  visit '/dashboard' 
end

And('I am at the dashboard page') do
  expect(page).to have_current_path("/dashboard")
end

And('my streams have successfully loaded') do |success_string|
  expect(page).to have_content(success_string)
end

Then('I expect to see a list of my data streams') do
  pending
end

And('I receive a connection error') do
  pending
end

Then('I expect to receive a clear and descriptive message of error') do |error_string|
  expect(page).to have_content(error_string)
end
