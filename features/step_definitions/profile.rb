Given("that I am logged in") do
  visit '/log-in'
  fill_in 'E-mail', :with => 'email@email.com'
  fill_in 'Password', :with => 'abacate'
  click_on 'Log-in!'
end

Then("I should see all my profile information") do
  expect(page).to have_content(@user.email)
  expect(page).to have_content(@user.password)
end

Then("I should see my AWS credentials") do
  expect(page).to have_content(@user.aws_key)
  expect(page).to have_content(@user.aws_secret)
end

Then("I should see a notice saying I have no AWS credentials saved") do |no_credentials_message|
  expect(page).to have_content(no_credentials_message)
end

Then("I should see an unauthorized error page") do
  expect(page).to have_current_path("/unauthorized")
end
