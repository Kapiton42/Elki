class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :zones, null: false
      t.integer :priceOfTicket, null: false

      t.timestamps null: false
    end
  begin
    reversible do |dir|
      dir.up do
        execute("ALTER TABLE prices ADD CONSTRAINT positive_price CHECK(price > 0)")
      end
    end
  end
  end
  begin
    reversible do |dir|
      dir.up do
        execute("ALTER TABLE prices ADD CONSTRAINT positive_zone CHECK(zones >= 0)")
      end
    end
  end
end
