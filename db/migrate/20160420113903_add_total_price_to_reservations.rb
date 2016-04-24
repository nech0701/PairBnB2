class AddTotalPriceToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :total_price, :string
  end
end
