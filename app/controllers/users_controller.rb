class UsersController < ApplicationController
  include AdminAccessControl
  before_action :authenticate_user!

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

end
