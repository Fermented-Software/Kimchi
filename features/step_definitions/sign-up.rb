When('click on the {string} button') do |button_name|
  click_on "Sign-up!"
end

Given('I am at the sign-up page') do
  visit "/sign-up"
end

When('I fill the field {string} with {string}') do |field, value|
  fill_in field, :with => value
end

Then('the data should have been persisted at a database') do
  user = User.last
  expect(user.username).to eq('Miguel Vasconcelos')
  expect(user.password).to eq('abcdefg') 
  expect(user.aws_key).to eq('AKIAIOSFODNN7EXAMPLE') 
  expect(user.aws_secret).to eq('wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY') 
end

When('leave the field {string} empty') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the error message {string} should show up') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to my dashboard') do
  assert_current_path("/dashboard")
end