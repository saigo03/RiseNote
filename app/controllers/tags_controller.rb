class TagsController < ApplicationController
  before_action :check_admin

  def index
    @tags = Tag.all
    # Tag.newをしなければフォームからデータ保存ができない
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, notice: '新しいタグを作成しました'
    else
      render :new
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path, alert: 'タグを削除しました'
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def check_admin
    unless current_user.admin?
      redirect_to root_path, alert: "管理者のみアクセスできます"
    end
  end
end