class PostsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  def index
     @posts = Post.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
      end
  end

  def edit
  end
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post has been saved!"
      redirect_to root_path
    else
      render 'users/index'
    end
  end
  
  def destroy
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end
end
