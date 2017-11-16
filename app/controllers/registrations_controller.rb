class RegistrationsController < Devise::RegistrationsController

  private

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation, :current_password,
                                  :phone_number,:city, :street, :apt, :mission)
  end
end