Given('that I have signed-in') do
  visit '/dashboard' 
end

Given('I am at the liststreams page') do
  visit "/liststreams"
end

And('my streams have successfully loaded') do |success_string|
  expect(page).to have_content(success_string)
end

And('I click on {string} button') do |button_name|
  click_on button_name
end

Then('I expect to see a list of my data streams') do |stream_list|
  expect(page).to have_content(stream_list)
end

And('I receive a connection error') do |connection_error|
  expect(page).to have_content(connection_error)
end

Then('I expect to receive a clear and descriptive message of error') do |error_string|
  expect(page).to have_content(error_string)
end
