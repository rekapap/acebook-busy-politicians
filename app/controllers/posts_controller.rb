class PostsController < ApplicationController
  def home
    @x = "hello becca"
  end

  def new   # Felix: I think this is the same as new_post_path (localhost/posts/new)
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end
end
