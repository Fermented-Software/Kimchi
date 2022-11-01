class LoginController < ApplicationController
    def login_receive
        @user = User.new()
    end

    def login_answer(user_params)
        @user = User.new(user_params)

    end

    private

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :aws_key, :aws_secret)
    end

end


