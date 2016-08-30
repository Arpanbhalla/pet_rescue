class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|

        t.text :species
        t.text :breed
        t.text :sex
        t.text :images
        t.text :dob
        t.text :description
        t.text :price
        t.integer :user_id

      t.timestamps null: false
    end
  end
end
