class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 15 }
  validates :content, presence: true, length: { maximum: 200 }
  validates :read, inclusion: { in: [true, false] }
end
