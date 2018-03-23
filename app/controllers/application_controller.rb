class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    attributes = [:user_id, :username, :first_name, :last_name, :password_salt, :street_address, :city, :state, :zip, :phone, :crematory_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :user_id, :username, :first_name, :last_name, :password_salt, :street_address, :city, :state, :zip, :phone, :crematory_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :user_id, :username, :first_name, :last_name, :password_salt, :street_address, :city, :state, :zip, :phone, :crematory_name])
  end

end
