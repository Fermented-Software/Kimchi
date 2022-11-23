class AwsCredentialValidationError < StandardError
  def initialize
    super("The user AWS credentials could not be validated. Please check it again.")
  end
end
