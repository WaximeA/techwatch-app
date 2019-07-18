class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy, :get_comments]
  before_action :authenticate_and_set_user, only: [:create, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    current_user_id = @current_user.id
    @post = Post.new(post_params.merge(user_id: current_user_id))

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  # GET /posts/:id/comments
  def get_comments
    render json:  @post.comments, status: :success
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.permit(:title, :content, :link, :category_id)
    end
end
