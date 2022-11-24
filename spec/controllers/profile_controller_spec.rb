require 'rails_helper'

describe ProfileController, :type => :request do

  it "should redirect to unauthorized page if there is no session" do
    get '/profile'
    expect(response.status).to be(302)
  end
end
