class Senior < ActiveRecord::Base

#associations
  has_many :mantelzorgers
  has_many :appointments
  has_many :ondersteuners, through: :appointments

#validations
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
end
