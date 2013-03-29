class PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update_attributes(params[:post])
      render json: post
    else
      render json: post, status: 422
    end
  end
end
