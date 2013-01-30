class PostsController < ApplicationController

  def index

    redirect_to "https://cas.thoughtworks.com/cas/login?service=http://localhost:3000/posts?ReturnUrl=%2f"


    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.new
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
       redirect_to post_path(@post)
    else
      render action = "new"
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to @post
    else
      render action = "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to posts_path
  end

end