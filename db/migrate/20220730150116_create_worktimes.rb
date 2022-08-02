class CreateWorktimes < ActiveRecord::Migration[7.0]
  def change
    create_table :worktimes do |t|
      t.references :weektime, null: false, foreign_key: true
      t.time :gotime
      t.time :endtime
      t.integer :accord

      t.timestamps
    end
  end
end
