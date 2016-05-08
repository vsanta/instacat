class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    PostCreator.new.create(post_params, current_user)
    redirect_to "/posts"
  end

  def index
    @posts = Post.by_user current_user
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:content, :cat_photo)
  end
end
