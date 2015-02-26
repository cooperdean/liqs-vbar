class ShelfsController < ApplicationController

  before_action :find_shelf, only: [:show, :edit, :update]

  def show
  end

  def new
    @shelf = Shelf.new
  end

  def create
    @shelf = Shelf.new
    redirect_to @shelf
  end

  def edit
  end

  def update
    if @shelf.update
      redirect_to @shelf
    else
      render :edit
    end
  end

end
