class PostsController < ApplicationController

  def index
    @posts = Post.all
  end


  def show
    @post = Post.find(params[:id])
    @posts = Post.ordered_by_id
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :body)
  end
end
