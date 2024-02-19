class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :folder, optional: true

  has_and_belongs_to_many :tags

  #最大文字数１０文字
  validates :title, length: { maximum: 10 }
end
