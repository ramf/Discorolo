class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: :cancel


  def sign_up(resource_name, resource)
  end

  private
  def sign_up_params
    params.require(:user).permit(:name, :role, :email, :password, :password_confirmation)
  end

  def after_sign_up_path_for(resource)
    admins_index_path
  end
end
