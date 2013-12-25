class CategoriesController < ApplicationController
  before_action :set_cats, only: [:show, :edit, :update]

  def index
    @categories = Category.all
  end

  def show
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

  #editting the cat
  def edit
  end

  def update
    if @category.update(cat_params)
      redirect_to categories_path, notice: 'Category was successfully updated!'
    else
      render action: 'edit'
    end
  end

  #destroy a cat
  def destroy
    if Category.destroy(params[:id])
       redirect_to categories_path
    else
      redirect_to categories_path, notice: 'WARNING: The category was not destroyed'
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
