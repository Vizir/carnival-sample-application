class BlogController < ApplicationController
  before_filter :load_data 

  def index
    if params[:tag].nil?
      @posts = Post.all
    else
      @posts = Post.to_tags(params[:tag])
    end
  end

  def show_post
    @post = Post.find(params[:id])
  end

  def load_data
  @tags = Tag.all
  end

end