require 'rails_helper'

describe SessionsHelper do
  it "should raise NonExistentUserError if user email is not present in database" do
    email = "email@email.com"
    password = "testing"
    allow(SessionsHelper).to receive(:get_user_by_email) { nil }

    expect { SessionsHelper.create_session(email, password) }.to raise_error(NonExistentUserError.new(email))
  end

  it "should raise InvalidPasswordError if password does not match the password present in database" do
    email = "email@email.com"
    password = "testing"
    allow(SessionsHelper).to receive(:get_user_by_email) { User.new(:email => email, :password => "abcd") }

    expect { SessionsHelper.create_session(email, password) }.to raise_error(InvalidPasswordError.new)
  end

  it "should return user present in database if passwords match" do
    email = "email@email.com"
    password = "testing"
    allow(SessionsHelper).to receive(:get_user_by_email) { User.new(:email => email, :password => password) }

    result = SessionsHelper.create_session(email, password)
    expect(result.id).to be_truthy
    expect(result.email).to eq(email)
    expect(result.password).to eq(password)
  end

end