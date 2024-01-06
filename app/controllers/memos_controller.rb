class MemosController < ApplicationController
  before_action :set_folder
  before_action :set_mission
  before_action :set_memo, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag_id].present?
      # 単一のタグIDに基づいてメモをフィルタリング
      @memos = Memo.joins(:tags).where(tags: { id: params[:tag_id] }).distinct
    elsif params[:search].present?
      # テキストでの検索
      @memos = @folder.memos.where('title LIKE ?', "%#{params[:search]}%")
    else
      # すべてのメモを表示
      @memos = current_user.memos.where(folder: @folder)
    end
  end

  def show
  end

  def new
    @memo = @folder.memos.build
  end

  def create
    # タイトルが空白の場合、自動的に「無題」を設定
    params[:memo][:title] = '無題' if params[:memo][:title].blank?
    
    @memo = @folder.memos.new(memo_params)
    @memo.user = current_user  # ログインしているユーザーをメモに関連付け

    if @memo.save
      # ミッション達成のチェックとフラッシュメッセージの設定
      mission_message = current_user.check_mission
      flash[:notice] = mission_message if mission_message

      redirect_to folder_memos_path(@folder)
    else
      render :new, status: :unprocessable_entity
    end
  end



  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    # タイトルが空白の場合、自動的に「無題」を設定
    params[:memo][:title] = '無題' if params[:memo][:title].blank?

    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to folder_memos_path(@folder)
    else
      render :edit
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to folder_memos_path(@folder), alert: 'メモが削除されました。'
  end

  private

    def set_folder
      @folder = Folder.find(params[:folder_id])
    end


    def set_memo
      @memo = @folder.memos.find(params[:id])
    end

    # ミッションの確認のためにデータの取得
    def set_mission
      @missions = Mission.all
      @completed_missions = current_user ? current_user.missions : []
    end

    def memo_params
      params.require(:memo).permit(:title, :content, :tag_ids)
    end
end