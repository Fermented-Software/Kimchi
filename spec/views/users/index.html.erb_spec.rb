require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: "Username",
        password: "Password",
        aws_key: "Aws Key",
        aws_secret: "Aws Secret"
      ),
      User.create!(
        username: "Username",
        password: "Password",
        aws_key: "Aws Key",
        aws_secret: "Aws Secret"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Username".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Password".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Aws Key".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Aws Secret".to_s), count: 2
  end
end