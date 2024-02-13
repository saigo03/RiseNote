# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # ログイン後ページ遷移のオーバーライド
  def after_sign_in_path_for(resource)
    # 管理者権限がある場合は管理者ダッシュボードに、そうでない場合はノート一覧に遷移
    if resource.admin?
      admin_dashboard_path
    else
      folders_path
    end
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
    flash[:notice] = nil  # これでログアウト成功時のメッセージがクリアされます
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
