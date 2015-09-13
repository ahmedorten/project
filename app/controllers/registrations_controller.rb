class RegistrationsController < Devise::RegistrationsController
  layout 'admin'
  
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :username , :phone ,:gender, :email, :password, :password_confirmation , :user_type_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end