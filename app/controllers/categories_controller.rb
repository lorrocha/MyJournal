class CategoriesController < ApplicationController
  before_action :set_cats, only: [:edit, :update]

  def index
    @categories = Category.all
  end

  # creating new cats
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(cat_params)
    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created!'
    else
      render action:'new'
    end
  end

  #editting the entry
  def edit
  end

  def update
    binding.pry
    if @category.update(cat_params)
      redirect_to categories_path, notice: 'Category was successfully updated!'
    else
      render action: 'edit'
    end
  end

  private

  def set_cats
    @category = Category.find(params[:id])
  end

  def cat_params
    params.require(:category).permit(:name)
  end

end
