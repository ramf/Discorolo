class AdminsController < ApplicationController
  def index
    @user = User.new
    authorize @user
    @users = User.all

  end

  def new
  end

  def edit
  end
end
