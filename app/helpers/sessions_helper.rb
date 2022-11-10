module SessionsHelper
  def self.create_session(session_user)
    stored_user = [session_user].filter { |user| user.valid? }
                       .map { |user| get_user_by_email user }
                       .filter { |user| not user.nil? }
                       .filter { |user| user.password == session_user.password }

    if stored_user.empty? or stored_user.first.nil?
      raise NonExistentUserError.new
    end

    stored_user.first
  end

  def self.get_user_by_email(user)
    User.where(email: user.email).first
  end
end