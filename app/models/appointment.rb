class Appointment < ActiveRecord::Base
  belongs_to :senior
  belongs_to :ondersteuner
end