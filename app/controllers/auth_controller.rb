class AuthController < ApplicationController

    def login 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {user: user}
        else 
            render json: {errors: "Username or password is incorrect!"}
        end 
    end 

    def auto_login
        user = User.find_by(id: request.headers["Authorization"])

        if user 
            render json: user 
        else 
            render json: {errors: "Username not found!"}
        end 
    end 
   
end
