class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, alert: 'ユーザーが削除されました。'
  end


  def show
    @user = User.find(params[:id])
  end

  private

  def check_admin
    unless current_user.admin?
      redirect_to root_path, alert: "管理者のみアクセスできます"
    end
  end
end
