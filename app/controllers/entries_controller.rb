class EntriesController < ActionController::Base

  def create
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @entries = Entry.all
  end

  def edit
  end

  def new
  end

  def update
  end

  def destroy
  end
end
