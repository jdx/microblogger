class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def create
    Post.create(post_params)
    redirect_to '/posts'
  end
  
  def post_params
    params.require(:post).permit(:body, :category_id)
  end
end