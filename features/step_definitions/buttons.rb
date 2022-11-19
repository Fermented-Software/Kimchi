When('click on the {string} button') do |button_name|
  puts User.last
  click_on button_name
end