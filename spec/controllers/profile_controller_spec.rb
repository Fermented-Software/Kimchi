require 'rails_helper'

describe ProfileController, :type => :request do

  it "should render unauthorized page with status 401 if there is no session" do
    get '/profile'
    expect(response).to render_template("unauthorized/index")
    expect(response.status).to be(401)
  end
end
