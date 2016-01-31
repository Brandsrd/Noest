class HomeAssistant < ActiveRecord::Base

#associations
  has_many :appointments
  has_many :seniors, through: :appointments

#validations
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 3 }
# nog toevoegen in DB model  validates :email, presence: true, uniqueness: true

end
