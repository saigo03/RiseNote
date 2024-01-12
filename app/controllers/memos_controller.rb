class MemosController < ApplicationController
  before_action :set_folder
  before_action :set_memo, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag_id].present?
      # 単一のタグIDに基づいてメモをフィルタリング
      @memos = current_user.memos.joins(:tags).where(tags: { id: params[:tag_id] }).where(folder: @folder).distinct
    elsif params[:search].present?
      # テキストでの検索
      @memos = @folder.memos.where('title LIKE ?', "%#{params[:search]}%")
    else
      # すべてのメモを表示
      @memos = current_user.memos.where(folder: @folder)
    end
  end

  def show
    @memo = Memo.find(params[:id])
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

      redirect_to edit_folder_memo_path(@folder, @memo),notice: 'メモが保存されました。'
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
      redirect_to edit_folder_memo_path(@folder, @memo),notice: 'メモが保存されました。'
    else
      render :edit
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to folder_memos_path(@folder),alert: 'メモが削除されました。'
  end
  

  private

    def set_folder
      @folder = Folder.find(params[:folder_id])
    end


    def set_memo
      @memo = @folder.memos.find(params[:id])
    end

    def memo_params
      params.require(:memo).permit(:title, :content, :tag_ids)
    end
end