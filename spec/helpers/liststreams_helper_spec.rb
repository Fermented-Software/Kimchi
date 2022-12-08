require "rails_helper"

describe ListstreamsHelper do
  before(:each) do
    @myuser =
      User.new(
        email: "email@email.com",
        password: "a",
        aws_key: "hm",
        aws_secret: "dos"
      )
    @myuser.save!
  end

  it "Should create aws client with right credentials" do
    client = ListstreamsHelper.create_aws_client [@myuser.id]
    expect(client).to be_truthy
  end

  it "Should raise AwsCredentialValidationError when client is nil" do
    kinesis_mock_class = class_double("Aws::Kinesis::Client").as_stubbed_const
    allow(kinesis_mock_class).to receive(:new) { nil }
    expect {
      client = ListstreamsHelper.create_aws_client [@myuser.id]
    }.to raise_error(AwsCredentialValidationError)
  end
end
