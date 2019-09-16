class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    post = Post.find(params[:id])
    redirect_to post
  end


  private

  def post_params
    params.require(:post).permit(
      :title,
      :content,
      users_attributes: [
        :username,
        :email
      ],
      category_ids:[],
      categories_attributes: [:name]
      )
  end
end
