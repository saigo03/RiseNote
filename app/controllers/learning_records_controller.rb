class LearningRecordsController < ApplicationController
  include NonAdminAccessControl
  before_action :authenticate_user!
 
def show
  @daily_creations = current_user.daily_creations.order(date: :desc)
  @total_memos = current_user.memos.count
  @total_folders_created = current_user.folders.count
  @total_days_used = calculate_total_days_used
  # 日付ごとのメモ作成数を取得
  @memos_by_date = @daily_creations.group_by(&:date)
end
 
 
  private
 
  def calculate_total_days_used
    (Date.today - current_user.created_at.to_date).to_i
  end
end