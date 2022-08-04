class Worktime < ApplicationRecord
  belongs_to :weektime

  validates :gotime, presence: true
  validates :endtime, presence: true


end
