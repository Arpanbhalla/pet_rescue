class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|

        t.text :species
        t.text :breed
        t.text :sex
        t.text :dob
        t.text :description
        t.text :price
        t.string :address
        t.float :latitude
        t.float :longitude
        t.integer :user_id
        t.text :image

      t.timestamps null: false
    end
  end
end
