require 'rails_helper'

describe User do
  it "should contain error if email is nil" do
    user = User.new
    user.valid?

    expect(user.errors[:email][0]).to eq("Please fill in your e-mail")
  end

  it "should contain error if email is empty" do
    user = User.new(:email => "")
    user.valid?

    expect(user.errors[:email][0]).to eq("Please fill in your e-mail")
  end

  it "should contain error if email is invalid" do
    user = User.new(:email => "flamengo")
    user.valid?

    expect(user.errors[:email][0]).to eq("Please fill in a valid e-mail")
  end

  it "should contain error if password is nil" do
    user = User.new(:email => "email@email.com")
    user.valid?

    expect(user.errors[:password][0]).to eq("Please fill in your password")
  end

  it "should contain error if password is empty" do
    user = User.new(:email => "email@email.com", :password => "")
    user.valid?

    expect(user.errors[:password][0]).to eq("Please fill in your password")
  end
end