class CreateWeektimes < ActiveRecord::Migration[7.0]
  def change
    create_table :weektimes do |t|
      t.references :user, null: false, foreign_key: true
      t.date :dateweek, null: false
      t.integer :weekhour, default: 0
      t.boolean :accord, default: false

      t.timestamps
    end
  end
end
