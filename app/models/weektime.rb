
#    create_table :weektimes do |t|
#      t.references :user, null: false, foreign_key: true
#      t.date :dateweek, null: false
#      t.time :weekhour
#      t.boolean :accord, default: false
#
#      t.timestamps
#
#      

class Weektime < ApplicationRecord
  belongs_to :user

  has_many :worktimes , dependent: :delete_all
  accepts_nested_attributes_for :worktimes

   
  validates_presence_of :dateweek

  def update_weekhour
    self.update_columns(weekhour: weekhour)
  end






end
