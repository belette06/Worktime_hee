class CreateWorktimes < ActiveRecord::Migration[7.0]
  def change
    create_table :worktimes do |t|
      t.references :weektime, null: false, foreign_key: true
      t.integer :daytime
      t.time :gotime, null: false
      t.time :endtime, null: false
      t.integer :totaltime, default: 0

      t.timestamps
    end
  end
end
