Given('that I have an account at the website') do
  User.create!(
    [
      :email => "email@email.com",
      :password => "abacate"
    ]
  )
end

Given("that I have AWS credentials saved") do
  @user = User.last
  @user.update_attributes(:aws_key => 'key', :aws_secret => 'secret')
end

Then('the data should have been persisted at a database') do
    user = User.last
    expect(user.email).to eq('sauron@mordor.arda')
    expect(user.password).to eq('theonering')
end
