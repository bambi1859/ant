class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :carrer, :job, :phone, :money, :time, "status")
  end
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :carrer, :job, :phone, :money, :time, "status")

#    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end
end