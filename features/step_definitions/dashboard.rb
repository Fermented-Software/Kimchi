Given('That I am at the dashboard page') do
  visit "/dashboard"
end

And('I am successfully logged') do

end

And('I have my AWS credentials registered') do

end

And('I dont have my AWS credentials registered') do

end

When('I click on the {string} anchor on Navbar') do |anchor_name|
  find("a", :text => anchor_name)
end

Then('I should be redirected to {string}') do
  visit "/dashboard"
end

And('I should see a message asking to add my AWS credentials') do

end

Then('I should see a welcome message on the page') do

end

Then('I should see a message asking for my AWS credentials') do

end