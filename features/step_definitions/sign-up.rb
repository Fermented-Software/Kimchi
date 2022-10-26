When('click on the {string} button') do |button_name|
  click_on button_name
end

Given('I am at the sign-up page') do
  visit "/sign-up"
end

When('I fill the field {string} with {string}') do |field, value|
  fill_in field, :with => value
end

Then('the data should have been persisted at a database') do
  user = User.last
  expect(user.email).to eq('sauron@mordor.arda')
  expect(user.password).to eq('theonering')
end

When('I leave the field {string} empty') do |field|
  fill_in field, :with => ""
end

Then('the error message {string} should show up') do |error_message|
  expect(page).to have_content(error_message)
end

Then('I should be redirected to my dashboard') do
  assert_current_path("/dashboard")
end