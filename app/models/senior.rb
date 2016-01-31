class Senior < ActiveRecord::Base

#associations
  has_many :informal_care_providers
  has_many :appointments
  has_many :home_assistants, through: :appointments

#validations
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true

def to_s
end

end
