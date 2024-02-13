class FoldersController < ApplicationController
  include NonAdminAccessControl
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  # GET /folders
  def index
    @folders = current_user.folders
    @folder = Folder.new

    # 学習記録の取得
    @total_memos = current_user.memos.count
    @total_folders_created = current_user.folders.count
  end

  # GET /folders/1
  def show
  end

  # GET /folders/1/edit
  def edit
  end

  # POST /folders
  def create
    # @folder = Folder.new(folder_params)
    @folder = current_user.folders.new(folder_params) # 新しいフォルダ用

    if @folder.save
      redirect_to folders_path
    else
      @folders = Folder.all  # フォルダ一覧を再取得
      render :index
    end
  end

  # PATCH/PUT /folders/1
  def update
    if @folder.update(folder_params)
      redirect_to @folder
    else
      render :edit
    end
  end

  # DELETE /folders/1
  def destroy
    @folder.destroy
    redirect_to folders_url, alert: 'ノートを削除しました'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder
      @folder = Folder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def folder_params
      params.require(:folder).permit(:name)
    end
end