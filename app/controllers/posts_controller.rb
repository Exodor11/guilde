class PostsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        posts.title ILIKE :query \
        OR tags.name ILIKE :query \
        OR tags.category ILIKE :query \
        OR users.first_name ILIKE :query \
        OR users.last_name ILIKE :query \
        "
      @posts = Post.joins(:tag, :user).where(sql_query, query: "%#{params[:query]}%")
    else
      @posts = Post.all
    end
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save!
    #redirect
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    #redirect
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    #redirect
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end
