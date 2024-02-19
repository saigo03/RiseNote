class Admin::DashboardController < ApplicationController
  include AdminAccessControl
  
  def index
    @user_count = User.count
    @tag_count = Tag.count
    @post_count = Post.count
  end
end
