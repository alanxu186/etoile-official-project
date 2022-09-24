class ModelsController < ApplicationController
skip_before_action :authorize, only: [:create]

def show
    render json: current_user
end

def create
    model = Model.create!(model_params)
    session[:model_id] = model.id
    render json: model, status: :created
end

private

def model_params
    params.permit(:name, :email, :password, :location, :phone_number, :agency, :about, :status, :ethnicity, :gender, :height)
end

end
