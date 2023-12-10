class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :folder, optional: true

  has_and_belongs_to_many :tags
end
