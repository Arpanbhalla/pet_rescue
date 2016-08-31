class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :animal_id
      t.datetime :created_at
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
