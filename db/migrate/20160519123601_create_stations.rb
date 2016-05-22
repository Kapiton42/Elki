class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.integer :tarif_zone, null: false
      t.integer :number, null: false
      t.index :number, unique: true

      t.timestamps null: false
    end
    begin
    reversible do |dir|
      dir.up do
        execute("ALTER TABLE stations ADD CONSTRAINT positive_number CHECK(number > 0)")
      end
    end
  end
  begin
    reversible do |dir|
      dir.up do
        execute("ALTER TABLE stations ADD CONSTRAINT positive_zone CHECK(tarif_zone > 0)")
      end
    end
  end
  end
end
