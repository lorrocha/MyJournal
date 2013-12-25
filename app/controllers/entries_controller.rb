class EntriesController < ApplicationController
  before_action :set_entry, except: [:index, :new, :create, :destroy]

# Make new entries
  def new
    @entry = Entry.new
  end

  def create
    if params["entry"][:title].empty?
      raise 'WARNING: Entry not valid. Missing title.'
    elsif params["entry"][:description].empty?
      raise 'WARNING: Entry not valid. Missing description.'
    end
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created!'
    else
      render action:'new'
    end
  end

  # Show the entries
  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @entries = Entry.all.order("created_at DESC")
  end

 #Edit the entries
  def edit
  end

  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated!'
    else
      render action: 'edit'
    end
  end

 #destroy the entry
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
