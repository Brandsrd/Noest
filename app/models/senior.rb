class Senior < ActiveRecord::Base

#associations
  has_many :mantelzorgers
  has_many :appointments
  has_many :ondersteuners, through: :appointments

#validations
  validates :naam, presence: true, length: { minimum: 2 }
  validates :achternaam, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
end
