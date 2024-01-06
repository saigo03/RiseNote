class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, only: [:destroy]

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, alert: 'ユーザーが削除されました。'
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to root_path, alert: "管理者のみがこの操作を行えます。"
    end
  end
end
