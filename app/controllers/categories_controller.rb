class CategoriesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_category, only:[:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    respond_to do |format|
      if @category.save
        format.json{head :no_content}
        format.js
      else
        format.json{render json: @category.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.json{head :no_content}
        format.js
      else
        format.json{render json: @category.errors.full_messages,status: :unprocessable_entity}
      end
    end
  end

  def destroy
    if @category.destroy
      redirect_to categories_path, notice: "Category deleted successfully"
    else
      redirect_to categories_path
    end
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
