class PostsController < ApplicationController
  def index
    posts = Post.all
    if posts
      render json: {status: "SUCCESS", message: "All posts ready", data: posts}, status: :ok
    else
      render json: posts.errors, status: :bad_request
    end
  end


  def show
  end

  def create
    post = Post.create(post_params)
   
    render json: post
  end

  def update
    post = Post.find(params[:id])
    post.update(post_param)
    render json: post
  end


  def destroy
    post = Post.find(params[:id])
    post.destroy
    head :no_content, status: :ok
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    post = Post.find(params[:id])
  end


  
  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:created_at, :content, :user_id)
  end
end
