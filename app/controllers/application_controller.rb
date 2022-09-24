class ApplicationController < ActionController::API
include ActionController::Cookies
include ActiveStorage::Blob::Analyzable 
before_action :authorized
rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
rescue_from ActiveRecord:RecordInvalid, with: :invalid_record_error
# def hello_world 
#     session[:count] = (session[:count] || 0) + 1
#     render json: {count: session[:count]}
# end

private

def current_user 
    @current_user ||= (session[:type] == "model" ? Model.find(id: session[:model_id]): Client.find(id: session[:client_id]))
end

def not_found_error
    render json: {error: error.message}, status: 404
end

def invalid_record_error
    render json: {error: error.record.errors.full_messages}, status: 422
end


end
