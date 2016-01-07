class Ondersteuner < ActiveRecord::Base

#associations
  has_many :appointments

#validations
  validates :naam, presence: true, length: { minimum: 2 }
  validates :achternaam, presence: true, length: { minimum: 3 }
# nog toevoegen in DB model  validates :email, presence: true, uniqueness: true

end
