class AddShowroomsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :showrooms, :json
  end
end
