When('click on the {string} button') do |button_name|
  puts "First user saved:"
  puts User.first.email
  puts User.first.password

  puts "Last user saved:"
  puts User.last.email
  puts User.last.password
  click_on button_name
end