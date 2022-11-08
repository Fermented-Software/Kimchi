module SessionsHelper
  def create_session(email, password)
    stored_user = User.where(email: email).first

    if stored_user.nil?
      raise NonExistentUserError.new(email)
    else
      if stored_user.password != password
        raise InvalidPasswordError.new
      else
        return stored_user
      end
    end
  end
end