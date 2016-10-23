class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

            t.string :email
            t.string :first_name
            t.string :last_name
            t.text :mobile
            t.text :image
            t.string :address
            t.float :latitude
            t.float :longitude
            t.boolean :admin, :default => false
            t.text :password_digest

      t.timestamps null: false
    end
  end
end
