#   create_table :worktimes do |t|
#  t.references :weektime, null: false, foreign_key: true
#  t.time :daytime
#  t.time :gotime, null: false
#  t.time :endtime, null: false
#  t.time :totaltime
#  
#  t.timestamps
# 
 class Worktime < ApplicationRecord
  belongs_to :weektime
  
  enum daytime:{lundi:1, mardi:2, mercredi:3, jeudi:4, vendredi:5, samedi:6, dimanche:0}
 
  # attr_reader :set_jour
  attr_accessor :flash_alert_message

  before_validation :insert_weektime_id, on: [ :create, :update ]
  
  validates :daytime, presence: true
  validates :gotime, presence: true
  validates :endtime, presence: true

 
  after_validation :calcul_heure, on: [ :create, :update ]

  after_validation :validate_negative_heure, on: [ :create, :update ]
  after_validation :calcul_max_heur, on: [ :create, :update ]
 


#  def set_jour  
#    self.worktime.wday 
#  end


  private

 
  def insert_weektime_id
    if self.weektime.id.nil?
      self.flash_alert_message  = "Erreur weektimes is nil" 
      raise ActiveRecord::Rollback 
    end
  end

 
  def calcul_heure
    self.totaltime = self.endtime - self.gotime  
  end

  def calcul_max_heur
    
    if self.totaltime > 64800 # valeur 18h //3600 sec = 60 minutes
      self.flash_alert_message = "Erreur trop d'heure saisie" 
      raise ActiveRecord::Rollback 
    end  
  end

 
#  def empty_day  
#    self.flash_alert_message = "Sasire jour" if self.daytime.nil? 
#  end

  def validate_negative_heure
    if self.totaltime.negative? || self.totaltime == 0 
      self.flash_alert_message = "Erreur de sasie des heures" 
      raise ActiveRecord::Rollback 
    end  
  end

end
