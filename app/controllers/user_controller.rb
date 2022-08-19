class UserController < ApplicationController

    def show
        user = User.find_by(username: session[:user_id])
        
        if user
            render json: user
        else
            render json: { error: "Not authorized" },status: unauthorized 
        end
    end

end