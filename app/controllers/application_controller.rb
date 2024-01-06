class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_missions, if: :user_signed_in?

  protected

  # Deviseのストロングパラメータの設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  # ミッションデータの設定
  private
  
  def set_missions
    @missions = Mission.all
    @completed_missions = current_user.missions
  end
end