# app/controllers/concerns/non_admin_access_control.rb
module NonAdminAccessControl
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
    before_action :check_not_admin
  end

  private

  def check_not_admin
    if current_user&.admin?
      redirect_to admin_dashboard_path , alert: "管理者はアクセスできません"
    end
  end
end
