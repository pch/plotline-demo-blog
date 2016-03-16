class PostsController < ApplicationController
  def index
    @posts = blog_posts.order('published_at desc')
  end

  def show
    @post = blog_posts.find_by_slug!(params[:slug])
  end

  def search
    @posts = blog_posts.search(params[:q])
    render action: 'index'
  end

  private

  def blog_posts
    Post.published
  end
end
