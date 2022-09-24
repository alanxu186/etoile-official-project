class ClientsController < ApplicationController
skip_before_action :authorize, only: [:create]

def show
    render json: current_user
end

def create 
    client = Client.create!(client_params)
    session[:client_id] = client.id
    render json: client, status: :created
end

private 

def client_params
    params.permit(:name, :email, :password, :address, :phone_number, :about, :website_url)
end

end
