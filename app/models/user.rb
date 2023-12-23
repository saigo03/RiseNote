class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # フォルダの関連づけ
  has_many :folders

  # メモとの関連付け
  #dependent: :destroyでアカウント削除時に関連づいたメモも削除する
  has_many :memos, dependent: :destroy

  #ミッションとの関連付け
  has_many :user_missions
  has_many :missions, through: :user_missions

   # 新規登録時にデフォルトランクを設定
   before_create :set_default_rank

  # ユーザーのミッション達成状況をチェックし、必要に応じてポイントを加算する
  def check_mission
    self.points ||= 0

    # 初めてのメモ作成時のミッションチェック
    check_and_complete_mission(1, 1) if self.memos.count == 1

    # メモ作成回数が100回に達した時のミッションチェック
    check_and_complete_mission(2, 3) if self.memos.count == 3

    # ポイントの変更があった場合のみ保存
    self.save if self.points_changed?
  end

  private

    # 新規登録時にデフォルトランクを設定する
    def set_default_rank
      self.rank = '一般人' unless self.rank
    end

    # 特定のミッションIDに対して、ユーザーが条件を満たしているかチェックし、
    # 条件を満たしていればミッションを達成としてポイントを加算し、UserMissionを更新する
    def check_and_complete_mission(mission_id, required_count)
      user_mission = self.user_missions.find_or_initialize_by(mission_id: mission_id)
      return if user_mission.completed

      mission = Mission.find_by(id: mission_id)
      return unless mission

      if self.memos.count == required_count
        self.points += mission.point_value
        user_mission.completed = true
        user_mission.save
      end
    end
end
