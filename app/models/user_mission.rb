class UserMission < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  # デフォルト値の設定
  attribute :completed, :boolean, default: false
end
