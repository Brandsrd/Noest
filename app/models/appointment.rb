class Appointment < ActiveRecord::Base
  belongs_to :senior
  belongs_to :home_assistant
end