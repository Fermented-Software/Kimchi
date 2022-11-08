module SessionsHelper
  def self.create_session(email, password)
    stored_user = get_user_by_email(email)

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

  def self.get_user_by_email(email)
    User.where(email: email).first
  end
end