class Mantelzorger < ActiveRecord::Base
  belongs_to :senior
  has_many :seniors, through: :appointments
end
