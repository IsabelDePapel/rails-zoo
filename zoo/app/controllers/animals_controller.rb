class AnimalsController < ApplicationController
  def index
    @animals = Animal.order(:name)
  end

  def show
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def new
    @animal = Animal.new
  end

  def create
    # @animal = Animal.new(name: params[:animal][:name], species: params[:animal][:species], age: params[:animal][:age], fav_food: params[:animal][:fav_food])
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def update
    animal = Animal.find_by(id: params[:id].to_i)

    if animal.update_attributes(animal_params)
      redirect_to root_path
    else
      render :edit
    end

  end

  def destroy
    animal = Animal.find_by(id: params[:id].to_i)
    animal.destroy

    redirect_to root_path
  end

  private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age, :fav_food, :image_src)
  end
end
