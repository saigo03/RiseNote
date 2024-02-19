class MemosController < ApplicationController
  include NonAdminAccessControl
  before_action :set_folder
  before_action :set_memo, only: [:show, :edit, :update, :destroy]
  before_action :set_title_if_blank, only: [:update]
 
  def index
    if params[:tag_id].present?
      tag_id = params.require(:tag_id).to_i
      @memos = current_user.memos.joins(:tags).where(tags: { id: tag_id }).where(folder: @folder).distinct
    elsif params[:search].present?
      search_term = "%#{params.require(:search)}%"
      @memos = @folder.memos.where('title LIKE ?', search_term)
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

    # タイトルが空白時「無題」を入力
    @memo.title = '無題' if @memo.title.blank?
 
    if @memo.save
      # メモが保存されたら、DailyCreationモデルを使用して日別の作成数を更新
      DailyCreation.record_creation(current_user.id, Date.today, 1, 0)

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

    # タイトルが空白時「無題」を入力
    params[:memo][:title] = '無題' if params[:memo][:title].blank?

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

  #空白の時に無題を入力
  def set_title_if_blank
    @memo.title = '無題' if @memo.title.blank?
  end
end