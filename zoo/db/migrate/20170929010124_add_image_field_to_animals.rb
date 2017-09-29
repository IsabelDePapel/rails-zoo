class AddImageFieldToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column(:animals, :image_src, :text)
  end
end
