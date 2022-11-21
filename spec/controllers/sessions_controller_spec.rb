require 'rails_helper'

describe SessionsController, :type => :request do
  it "should render login with status 422 if user email is invalid" do
    post sessions_url, :params => { "email": "abc" }
    expect(response).to render_template(:login)
    expect(response.status).to be(422)
  end

  it "should render login with status 422 if user password is invalid" do
    post sessions_url, :params => { "email": "email@email.com" }
    expect(response).to render_template(:login)
    expect(response.status).to be(422)
  end

  it "should render login with status 422 if user email and password are invalid" do
    post sessions_url
    expect(response).to render_template(:login)
    expect(response.status).to be(422)
  end

  it "should render login with status 422 if user does not exist in database" do
    email = "email@email.com"
    password = "testing"

    allow(SessionsHelper).to receive(:create_session).and_raise(NonExistentUserError)
    post sessions_url, :params => { "email": email, "password": password }

    expect(response).to render_template(:login)
    expect(response.status).to be(422)
  end

  it "should render login with status 422 if the password is wrong" do
    email = "email@email.com"
    password = "testing"

    allow(SessionsHelper).to receive(:create_session).and_raise(NonExistentUserError)
    post sessions_url, :params => { "email": email, "password": password }

    expect(response).to render_template(:login)
    expect(response.status).to be(422)
  end

  it "should redirect to dashboard if email and password match" do
    email = "email@email.com"
    password = "testing"

    allow(SessionsHelper).to receive(:create_session) { User.new(:email => email, :password => password) }
    post sessions_url, :params => { "email": email, "password": password }

    expect(response).to redirect_to(dashboard_index_path)
  end
end