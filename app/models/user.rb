class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # フォルダの関連づけ
  has_many :folders, dependent: :destroy

  # メモとの関連付け
  #dependent: :destroyでアカウント削除時に関連づいたメモも削除する
  has_many :memos, dependent: :destroy

  #お問合せ関連付け
  has_many :posts, dependent: :destroy

  #作成記録関連
  has_many :daily_creations, dependent: :destroy

  #ミッションとの関連付け
  has_many :user_missions, dependent: :destroy
  has_many :missions, through: :user_missions

  #文字数は２～８文字
  validates :username, presence: true, length: { minimum: 2, maximum: 8 }
  
  # パスワードに関するバリデーション
  validates :password, presence: true, length: { minimum: 8 }, on: :create
  validates :password, format: { 
    with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,}+\z/,
    message: "は、最低8文字以上で、少なくとも1つの数字と大文字を含む必要があります" 
  }, on: :create


   # 新規登録時にデフォルトランクを設定
   before_create :set_default_rank

  # ユーザーのミッション達成状況をチェックし、必要に応じてポイントを加算する
  def check_mission(memo_count_before_save)
    self.points ||= 0
  
    # 初めてのメモ作成時のミッションチェック
    message = check_and_complete_mission(1, 1) if memo_count_before_save == 1

    # メモ作成回数が3回に達した時のミッションチェック
    message ||= check_and_complete_mission(2, 3) if memo_count_before_save == 3

    # メモ作成回数が10回に達した時のミッションチェック
    message ||= check_and_complete_mission(3, 10) if memo_count_before_save == 10

    # メモ作成回数が20回に達した時のミッションチェック
    message ||= check_and_complete_mission(4, 20) if memo_count_before_save == 20

    # メモ作成回数が30回に達した時のミッションチェック
    message ||= check_and_complete_mission(5, 30) if memo_count_before_save == 30

    # メモ作成回数が40回に達した時のミッションチェック
    message ||= check_and_complete_mission(6, 40) if memo_count_before_save == 40

    # メモ作成回数が50回に達した時のミッションチェック
    message ||= check_and_complete_mission(7, 50) if memo_count_before_save == 40
  
    self.save if self.points_changed?
    message
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
      return nil if user_mission.completed
    
      mission = Mission.find_by(id: mission_id)
      return nil unless mission
    
      if self.memos.count == required_count
        self.points += mission.point_value
        user_mission.completed = true
        user_mission.save
    
        # ミッション達成時のみメッセージを返す
        "「#{mission.name}」を達成しました！"
      else
        # ミッション未達成の場合はnilを返す
        nil
      end
    end
end