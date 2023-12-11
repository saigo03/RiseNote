class TagsController < ApplicationController

  def index
    @tags = Tag.all
    # Tag.newをしなければフォームからデータ保存ができない
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path, notice: 'Tag was successfully deleted.'
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end