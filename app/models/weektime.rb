class Weektime < ApplicationRecord
  belongs_to :user

  has_many :worktimes 
  accepts_nested_attributes_for :worktimes

  validates_presence_of :dateweek


end
