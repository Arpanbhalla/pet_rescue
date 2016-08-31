class ChangeAnimalImageToArray < ActiveRecord::Migration
  def change
    remove_column :animals, :images
    add_column :animals, :image, :text, :array => true, :default => []
  end
end
