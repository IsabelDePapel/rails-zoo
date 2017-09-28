class AddFavoriteFoodToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column(:animals, :fav_food, :string)
  end
end
