When('I fill the field {string} with {string}') do |field, value|
    fill_in field, :with => value
end

When('I leave the field {string} empty') do |field|
    fill_in field, :with => ""
end