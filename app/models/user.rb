class User < ApplicationRecord

    has_many :weektimes
    accepts_nested_attributes_for :weektimes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         
  enum role:[:technicien, :moderateur, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
      self.role ||= :technicien
  end

  def admin
    self.role ||= :admin
  end

end
