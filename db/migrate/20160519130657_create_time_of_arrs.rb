class CreateTimeOfArrs < ActiveRecord::Migration
  def change
    create_table :time_of_arrs do |t|
      t.time :timeOfArrival
      t.references :station, index: true, foreign_key: true
      t.references :graphik, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
