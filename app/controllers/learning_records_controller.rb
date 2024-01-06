class LearningRecordsController < ApplicationController
  before_action :authenticate_user!

  def show
    @total_memos = current_user.memos.count
    @total_folders_created = current_user.folders.count
    @total_days_used = calculate_total_days_used
    # 他のデータも同様に取得
  end

  private

  # アプリを利用した日数の計算
  def calculate_total_days_used
    (Date.today - current_user.created_at.to_date).to_i
  end
end