class AdminsController < ApplicationController
  prepend_before_action :require_no_authentication, only: [:cancel]
  before_action :set_user, only: [:destroy]

  def index
    @user = User.new
    authorize @user
    @users = User.all

    
  end

  def new
    @user = User.new
    authorize @user
    @users = User.all
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to new_admin_path, notice: "Usuário (#{@user.name}) Cadastrado com sucesso!"
    else
      render :new
    end
  end

  def destroy

    @user.destroy
    redirect_to admins_path, notice: "Usuário excluído com sucesso!"

  end

  def set_user
    @user = User.find(params[:id])
  end


  private
  def params_user
    params.require(:user).permit(:email, :name, :role, :password, :password_confirmation)
  end
end
