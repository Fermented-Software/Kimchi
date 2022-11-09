require 'rails_helper'

RSpec.describe ListstreamsController do

  it "should list streams when valid credentials are provided" do
    streams = subject.list_streams
    expect(streams).not_to be(nil)
  end
  
end
