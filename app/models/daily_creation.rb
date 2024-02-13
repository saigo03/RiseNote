class DailyCreation < ApplicationRecord
  belongs_to :user
 
  def self.record_creation(user_id, date, memos_count, folders_count)
    daily_creation = find_or_initialize_by(user_id: user_id, date: date)
    daily_creation.memos_count += memos_count
    daily_creation.folders_count += folders_count
    daily_creation.save
  end
end