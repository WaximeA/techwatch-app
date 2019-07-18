class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy, :get_posts]
  before_action :authenticate_and_set_user, only: [:create, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    current_user_id = @current_user.id
    @category = Category.new(category_params.merge(user_id: current_user_id))

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  # GET /categories/:id/posts
  def get_posts
    render json:  @category.posts, status: :success
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.permit(:name, :description)
    end
end
