Given('that I am at sign-in page') do
  visit '/login'
end

When('I type my {string}') do |field_name| 
  fill_in string, :with => field_name
end
  
When('I press the {string} button') do |button_name|
  click_on string, :with => button_name
end

Then('I expect to be redirected to my dashboard') do
  visit '/dashboard'
end
  
Then('I expect to {string}') do |error_string|
  expect(page).to have_content(error_string)
end
