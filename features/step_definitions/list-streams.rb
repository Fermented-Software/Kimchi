Given('that I have signed-in') do
  visit '/dashboard' 
end

Given('I am at the liststreams page') do
  visit "/liststreams"
end

And('I click on {string} button') do |button_name|
  click_on button_name
end

Then('I expect to see a list of my data streams') do
  expected_msg = "kimchi-stream-one kimchi-stream-two"
  expect(page).to have_content(expected_msg)
end
