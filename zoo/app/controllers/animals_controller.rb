class AnimalsController < ApplicationController
  def index
    @animals = Animal.order(:name)
  end

  def show
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
