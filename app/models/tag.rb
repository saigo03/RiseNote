class Tag < ApplicationRecord
  has_and_belongs_to_many :memos

  # 空白での保存を防ぐ：最大文字数10
  validates :name, presence: true, length: { maximum: 10 }
end
