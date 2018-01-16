class ApplicationController < ActionController::Base

  # Pundit
  include Pundit

  # Manage pundit errors
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  def user_not_authorized
    flash[:alert] = "Acesso negado."
    redirect_to(request.referrer || root_path)
  end

end
