Given('that I have account at the website') do
  User.create!(
    [
      :email => "email@email.com",
      :password => "abacate"
    ]
  )
end

Then('the data should have been persisted at a database') do
    user = User.last
    expect(user.email).to eq('sauron@mordor.arda')
    expect(user.password).to eq('theonering')
end