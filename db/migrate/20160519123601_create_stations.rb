class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name, null: false, unique: true
      t.integer :tarifZone, null: false
      t.integer :number, null: false, unique: true

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
        execute("ALTER TABLE stations ADD CONSTRAINT positive_zone CHECK(tarifZone > 0)")
      end
    end
  end
  end
end
