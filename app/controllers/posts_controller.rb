class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "お問合せの送信が完了しました。"
      redirect_to new_post_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all.order(id: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @post.update(read: true)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id, :read)
  end
end
