class UsersController < ApplicationController
  before_action :set_user, only: [:show, :get_categories, :get_posts, :get_comments]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # GET /users/:id/categories
  def get_categories
    render json:  @user.categories, status: :success
  end

  # GET /users/:id/posts
  def get_posts
    render json:  @user.posts, status: :success
  end

  # GET /users/:id/comments
  def get_comments
    render json:  @user.comments, status: :success
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
