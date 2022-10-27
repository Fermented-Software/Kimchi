require 'rails_helper'

RSpec.describe User, type: :model do
  it 'invalid without email' do
    user = User.new
    expect(user).not_to be_valid
  end
  it 'invalid without password' do
    user = User.new
    user.email = "teste@gmail.com"
    expect(user).not_to be_valid
  end
  it 'invalid with email format' do
    user = User.new
    user.email = "jose!#,@g!.com"
    expect(user).not_to be_valid
  end
end