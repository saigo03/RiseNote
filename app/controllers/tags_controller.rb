class TagsController < ApplicationController
  include AdminAccessControl

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
      flash.now[:alert] = 'タグの作成に失敗しました'
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
end