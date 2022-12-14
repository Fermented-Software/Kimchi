require 'rails_helper'

describe SessionsHelper do
  it "should raise NonExistentUserError if user email is not present in database" do
    email = "email@email.com"
    password = "testing"
    user = User.new(:email => email, :password => password)
    allow(SessionsHelper).to receive(:get_user_by_email) { nil }

    expect { SessionsHelper.create_session(user) }.to raise_error(NonExistentUserError)
  end

  it "should raise NonExistentUserError if password does not match the password present in database" do
    email = "email@email.com"
    password = "testing"
    user = User.new(:email => email, :password => password)
    allow(SessionsHelper).to receive(:get_user_by_email) { User.new(:email => email, :password => "abcd") }

    expect { SessionsHelper.create_session(user) }.to raise_error(NonExistentUserError)
  end

  it "should return user present in database if passwords match" do
    email = "email@email.com"
    password = "testing"
    user = User.new(:email => email, :password => password)
    allow(SessionsHelper).to receive(:get_user_by_email) { User.new(:email => email, :password => password) }

    result = SessionsHelper.create_session(user)
    expect(result.id).to be_truthy
    expect(result.email).to eq(email)
    expect(result.password).to eq(password)
  end

end