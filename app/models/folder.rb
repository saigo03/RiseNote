class Folder < ApplicationRecord
  belongs_to :user
  has_many :memos, dependent: :destroy

    # 空白での保存を防ぐ
    validates :name, presence: true
    # 一人のユーザーが同じフォルダ名を2つ以上保存できないようにする
    validates :name, uniqueness: { scope: :user_id } 
    # 特殊文字を含まない（セキュリティ対策）
    validates :name, format: { without: /[^a-zA-Z0-9ぁ-んァ-ン一-龥]/, message: "に特殊文字を使用することはできません" }
end
