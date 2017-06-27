class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:name, :email, :carrer, :job, :phone, :money, :time, :status, :level)
    end
    
   devise_parameter_sanitizer.permit(:edit) do |user_params|
      user_params.permit(:name, :email, :carrer, :job, :phone, :money, :time, :status, :level, :password, :password_confirmation, :current_password)
    end
    #devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
end
