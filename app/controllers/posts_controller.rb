class PostsController < ApplicationController
  def index
    @posts = Post.only_published
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.only_published.ordered_by_id
  end
end
