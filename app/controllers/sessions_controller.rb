class SessionsController < ApplicationController
    def login_receive
        @user = User.new()
    end

    def login_answer()
        @user = User.new(
            :email=> params[:email],
            :password=> params[:password]
        )
        
        if @user.valid?
            var = User.where(email: @user.email).first

            if var.nil?
                @user.errors.add(:email, message: "This email is not registered")
                render :login_receive, status: :unprocessable_entity 
            else
                if var.password == @user.password
                else
                    @user.errors.add(:email, message: "Wrong password")
                    render :login_receive, status: :unprocessable_entity 
                end
            end
        else
            render :login_receive, status: :unprocessable_entity 
        end
    end

end


