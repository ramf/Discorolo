class AdminsController < ApplicationController
  def index
    @user = User.new
    authorize @user
    
  end
end
