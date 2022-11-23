class NonExistentUserError < StandardError
  def initialize
    super("E-mail or password could not be found")
  end
end
