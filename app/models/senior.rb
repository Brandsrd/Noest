class Senior < ActiveRecord::Base
  has_many :mantelzorgers
  has_many :appointments
  has_many :ondersteuners, through: :appointments
end
