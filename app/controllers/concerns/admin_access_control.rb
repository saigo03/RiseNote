module AdminAccessControl
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
    before_action :check_admin
  end

  private

  def check_admin
    unless current_user&.admin?
      redirect_to root_path, alert: "管理者のみアクセスできます"
    end
  end
end
