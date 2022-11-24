Given('I am at the sign-up page') do
    visit "/sign-up"
end

Given('that I am at the login page') do
    visit "/log-in"
end

Given("that I am at the profile page") do
  visit "/profile"
end

Then('I should be redirected to my dashboard') do
    assert_current_path("/dashboard")
end

# TODO: find better place for this step
Then('the error message {string} should show up') do |error_message|
    expect(page).to have_content(error_message)
end
