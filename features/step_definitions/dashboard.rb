Given('That I am at the dashboard page') do
  visit "/dashboard"
end

And('I am successfully logged') do
  pending
end

And('I have my AWS credentials registered') do
  pending
end

And('I dont have my AWS credentials registered') do
  pending
end

When('I click on the {string} anchor on Navbar') do |anchor_name|
  find("a", :text => anchor_name).click
end

Then('I should be redirected to {string}') do |page_name|
  assert_current_path(page_name)
end

Then('I should see a message asking to add my AWS credentials') do |aws_credentials_string|
  expect(page).to have_content(aws_credentials_string)
end