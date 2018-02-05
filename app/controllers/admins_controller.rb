class AdminsController < ApplicationController
  prepend_before_action :require_no_authentication, only: [:cancel ]

  def index
    @user = User.new
    authorize @user
    @users = User.all
  end

  def new
    @user = User.new
    @users = User.all
    authorize @user
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to new_admin_path, notice: "Usuário (#{@user.name}) Cadastrado com sucesso!"
    else
      render :new
    end
  end






  private
  def params_user
    params.require(:user).permit(:email, :name, :role, :password, :password_confirmation)
  end
end
