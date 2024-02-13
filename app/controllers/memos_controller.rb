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
    @memo = @folder.memos.new(memo_params)
    @memo.user = current_user  # ログインしているユーザーをメモに関連付け
 
    if @memo.save
      # メモが保存されたら、DailyCreationモデルを使用して日別の作成数を更新
      DailyCreation.record_creation(current_user.id, Date.today, 1, 0)
 
      # メモ保存前にミッションチェックを行う
      memo_count_before_save = current_user.memos.count
      mission_message = current_user.check_mission(memo_count_before_save)
 
      # フラッシュメッセージの設定
      flash[:notice] = 'メモが保存されました。' + mission_message.to_s
 
      redirect_to edit_folder_memo_path(@folder, @memo)
    else
      render :new, status: :unprocessable_entity
    end
  end
 
  def edit
    @memo = Memo.find(params[:id])
  end
 
  def update
    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to edit_folder_memo_path(@folder, @memo), notice: 'メモが保存されました。'
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
 
  def memo_params
    params.require(:memo).permit(:title, :content, :tag_ids)
  end
end