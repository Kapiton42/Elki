class CreateTimeOfArrs < ActiveRecord::Migration
  def change
    create_table :time_of_arrs do |t|
      t.time :timeOfArrival, null: false
      t.references :station, index: true, foreign_key: true, null: false
      t.references :graphik, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
