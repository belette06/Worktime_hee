class Worktime < ApplicationRecord
  belongs_to :weektime

  validates_presence_of :gotime, :endtime
 
end
