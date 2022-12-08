require 'rails_helper'

RSpec.describe ListstreamsController do

  it "list streams should return an array as a response of successfull API call" do
    streams = subject.list_streams
    expect(streams).to be_an_instance_of(Array)
  end

  #it "server down" do
  #
  #end
end
