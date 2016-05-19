class CreateDoNotStops < ActiveRecord::Migration
  def change
    create_table :do_not_stops do |t|
      t.references :station, index: true, foreign_key: true
      t.references :graphik, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
