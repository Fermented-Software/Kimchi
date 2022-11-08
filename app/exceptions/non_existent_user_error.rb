class NonExistentUserError < StandardError
  def initialize(email)
    super("No user found with email #{email}")
  end
end
