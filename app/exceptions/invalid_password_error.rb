class InvalidPasswordError < StandardError
  def initialize
    super("The password is invalid")
  end
end
