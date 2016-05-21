class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wed
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.references :graphik, index: true, foreign_key: true, null: false, unique: true

      t.timestamps null: false
    end
  end
end
