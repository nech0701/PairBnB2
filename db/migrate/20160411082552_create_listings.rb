class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :description
      t.string :accomodates
      t.string :address
      t.string :city
      t.string :price
      t.boolean :smoking_room
      t.boolean :pet_friendly
      t.boolean :apartment
      t.boolean :house

      t.timestamps null: false
    end
  end
end
