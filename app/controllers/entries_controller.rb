class EntriesController < ApplicationController
  before_action :set_entry, except: [:index, :new, :create, :destroy]

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created!'
    else
      render action:'new'
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @entries = Entry.all
  end

  def edit
    binding.pry
  end

  def new
    @entry = Entry.new
  end

  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    if Entry.destroy(params[:id])
       redirect_to entries_path
    else
      redirect_to entries_path, notice: 'WARNING: The entry was not destroyed'
    end
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :description, :category_id)
  end
end
