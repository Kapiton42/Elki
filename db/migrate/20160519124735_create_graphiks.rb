class CreateGraphiks < ActiveRecord::Migration
  def change
    create_table :graphiks do |t|
      t.integer :station_begin_id
      t.integer :station_end_id

      t.timestamps null: false
    end
  end
end
