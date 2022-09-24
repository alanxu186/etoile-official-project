class SessionsController < ApplicationController
skip_before_action :authorize, only: [:create, :show, :destroy]

def create 
    user = {}
    if params[:type] == "model" 
        user = Model.find(email: params[:email])
        render json: user
    else
        user = Client.find(email: params[:email])
        render json: user
    end
end

def show
    if current_user
        render json: current_user
    else
        render json: {message: "Not logged in"}, status: 401
    end
end

def destroy
    
end


end