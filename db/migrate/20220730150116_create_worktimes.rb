class CreateWorktimes < ActiveRecord::Migration[7.0]
  def change
    create_table :worktimes do |t|
      t.references :weektime, null: false, foreign_key: true
      t.time :daytime
      t.time :gotime, null: false
      t.time :endtime, null: false
      t.time :totaltime

      t.timestamps
    end
  end
end
