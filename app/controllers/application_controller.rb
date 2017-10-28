class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :alias, :email, :password, :password_confirmation, :remember_me) }
     devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me) }
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :alias, :email, :password, :password_confirmation, :current_password) }
  end 
end
