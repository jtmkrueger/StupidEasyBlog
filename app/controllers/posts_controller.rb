class PostsController < ApplicationController
  http_basic_authenticate_with :name => ENV['USERNAME'], :password => ENV['PASSWORD'], :only => [:admin, :new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def photos
    @posts = Post.where(:post_type => "photo")
    render "index"
  end

  def songs
    @posts = Post.where(:post_type => "song")
    render "index"
  end

  def news
    @posts = Post.where(:post_type => "news")
    render "index"
  end

  def show
    @post = Post.find(params[:id])
  end

  def admin
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, :notice => "Successfully created post."
    else
      render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post, :notice  => "Successfully updated post."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, :notice => "Successfully destroyed post."
  end
end
