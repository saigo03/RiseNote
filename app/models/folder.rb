class Folder < ApplicationRecord
  belongs_to :user
  has_many :memos, dependent: :destroy

    # 空白での保存を防ぐ
    validates :name, presence: true, length: { maximum: 10 }
    # 一人のユーザーが同じフォルダ名を2つ以上保存できないようにする
    validates :name, uniqueness: { scope: :user_id } 
end
