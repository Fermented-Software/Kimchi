require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    assign(:user, User.create!(
      username: "Username",
      password: "Password",
      aws_key: "Aws Key",
      aws_secret: "Aws Secret"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Aws Key/)
    expect(rendered).to match(/Aws Secret/)
  end
end
