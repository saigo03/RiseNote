class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # メモとの関連付け
  #dependent: :destroyでアカウント削除時に関連づいたメモも削除する
  has_many :memos, dependent: :destroy
end
