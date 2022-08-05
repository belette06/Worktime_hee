#  create_table :worktimes do |t|
#   t.references :weektime, null: false, foreign_key: true
#   t.time :gotime, null: false
#   t.time :endtime, null: false
#   t.float :alltime
#  
#   t.timestamps
# 


 class Worktime < ApplicationRecord

  belongs_to :weektime

  validates :gotime, presence: true
  validates :endtime, presence: true




end
