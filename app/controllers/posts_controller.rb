class PostsController < ApplicationController
  
  def index
    @posts = Post.order('created_at DESC').all
  end

  def show
  
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post_params])
    if @post.save
      redirect_to :action => 'index'
    else
      redirect_to :action => 'new'
    end
  end

  def edit
  
  end

  def update
  
  end

  def destroy
  
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end   
end
