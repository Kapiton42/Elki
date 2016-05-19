class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :zones
      t.integer :priceOfTicket

      t.timestamps null: false
    end
  end
end
